#!/bin/bash

set -e

POWER_CMD="/usr/sbin/power-util mb"
IMAGE_FILE=$1/bios.bin

IPMB_OBJ="xyz.openbmc_project.Ipmi.Channel.Ipmb"
IPMB_PATH="/xyz/openbmc_project/Ipmi/Channel/Ipmb"
IPMB_INTF="org.openbmc.Ipmb"
IPMB_CALL="sendRequest yyyyay"
ME_CMD_RECOVER="1 0x2e 0 0xdf 4 0x57 0x01 0x00 0x01"
ME_CMD_RESET="1 6 0 0x2 0"
SPI_DEV="1e630000.spi"
SPI_PATH="/sys/bus/platform/drivers/spi-aspeed-smc"

set_gpio_to_bmc()
{
    echo "switch bios GPIO to bmc"
    # Use gpiofind to get the chip and line offsets, then set to 1
    gpioset $(gpiofind BIOS_SPI_BMC_CTRL)=1
    return 0
}

set_gpio_to_pch()
{
    echo "switch bios GPIO to pch"
    # Use gpiofind to get the chip and line offsets, then set to 0
    gpioset $(gpiofind BIOS_SPI_BMC_CTRL)=0
    return 0
}

echo "Bios upgrade started at $(date)"

#Power off host server.
echo "Power off host server"
$POWER_CMD off
sleep 15
if [ "$($POWER_CMD status)" != "off" ];
then
    echo "Host server didn't power off"
    echo "Bios upgrade failed"
    exit 1
fi
echo "Host server powered off"

#Set ME to recovery mode
echo "Set ME to recovery mode"
# shellcheck disable=SC2086
busctl call "$IPMB_OBJ" "$IPMB_PATH" "$IPMB_INTF" $IPMB_CALL $ME_CMD_RECOVER
sleep 5

#Flip GPIO to access SPI flash used by host.
echo "Set GPIO to access SPI flash from BMC used by host"
set_gpio_to_bmc

#Bind spi driver to access flash
echo "bind spi-aspeed-smc spi driver"
echo -n $SPI_DEV > $SPI_PATH/bind
sleep 1

#Flashcp image to device.
if [ -e "$IMAGE_FILE" ];
then
    echo "Bios image is $IMAGE_FILE"
    for d in 6 7 ; do
        if [ -e "/dev/mtd$d" ]; then
            mtd=$(cat /sys/class/mtd/mtd$d/name)
            if [ "$mtd" == "pnor" ]; then
                echo "Flashing bios image to mtd$d..."
                if flashrom -V -p "linux_mtd:dev=$d" -w "$IMAGE_FILE"; then
                    echo "bios updated successfully..."
                else
                    echo "bios update failed..."
                fi
                break
            fi
            echo "mtd$d is not a pnor device"
        fi
        echo "mtd$d not available"
    done
else
    echo "Bios image $IMAGE_FILE doesn't exist"
fi

#Unbind spi driver
sleep 1
echo "Unbind spi-aspeed-smc spi driver"
echo -n $SPI_DEV > $SPI_PATH/unbind
sleep 10

#Flip GPIO back for host to access SPI flash
echo "Set GPIO back for host to access SPI flash"
set_gpio_to_pch
sleep 5

#Reset ME to boot from new bios
echo "Reset ME to boot from new bios"
# shellcheck disable=SC2086
busctl call "$IPMB_OBJ" "$IPMB_PATH" "$IPMB_INTF" $IPMB_CALL $ME_CMD_RESET
sleep 10

#Power on server
echo "Power on server"
$POWER_CMD on
sleep 5

# Retry to power on once again if server didn't powered on
if [ "$($POWER_CMD status)" != "on" ];
then
    sleep 5
    echo "Powering on server again"
    $POWER_CMD on
fi
