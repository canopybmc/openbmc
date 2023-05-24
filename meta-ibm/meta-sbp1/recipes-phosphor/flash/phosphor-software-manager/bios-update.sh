#!/bin/bash

set -e

IMAGE_FILE=$(find $1 -name "*.FD")

IPMB_OBJ="xyz.openbmc_project.Ipmi.Channel.Ipmb"
IPMB_PATH="/xyz/openbmc_project/Ipmi/Channel/Ipmb"
IPMB_INTF="org.openbmc.Ipmb"
IPMB_CALL="sendRequest yyyyay"
ME_CMD_RECOVER="1 0x2e 0 0xdf 4 0x57 0x01 0x00 0x01"
ME_CMD_RESET="1 6 0 0x2 0"

echo "Bios upgrade started at $(date)"

#Power off host server.
echo "Power off host server"
busctl set-property xyz.openbmc_project.State.Host0 /xyz/openbmc_project/state/host0 xyz.openbmc_project.State.Host RequestedHostTransition s "xyz.openbmc_project.State.Host.Transition.Off"
echo "Host server powered off"

echo "Power on PCH"
busctl set-property xyz.openbmc_project.State.Chassis /xyz/openbmc_project/state/chassis0 xyz.openbmc_project.State.Chassis RequestedPowerTransition s "xyz.openbmc_project.State.Chassis.Transition.On"
echo "PCH is powered on"

#Set ME to recovery mode
echo "Set ME to recovery mode"
# shellcheck disable=SC2086
# FIXME busctl call "$IPMB_OBJ" "$IPMB_PATH" "$IPMB_INTF" $IPMB_CALL $ME_CMD_RECOVER
# sleep 5

# Enable FM_FLASH_SEC_OVRD
gpioset $(gpiofind FM_FLASH_SEC_OVRD)=1

#Flashcp image to device.
if [ -e "$IMAGE_FILE" ];
then
    echo "Bios image is $IMAGE_FILE"
    flashrom -p linux_mtd:dev=12 -w $IMAGE_FILE
else
    echo "Bios image $IMAGE_FILE doesn't exist"
fi

# Disable FM_FLASH_SEC_OVRD
gpioset $(gpiofind FM_FLASH_SEC_OVRD)=0

#Reset ME to boot from new bios
echo "Reset ME to boot from new bios"
# shellcheck disable=SC2086
# busctl call "$IPMB_OBJ" "$IPMB_PATH" "$IPMB_INTF" $IPMB_CALL $ME_CMD_RESET

busctl set-property xyz.openbmc_project.State.Chassis /xyz/openbmc_project/state/chassis0 xyz.openbmc_project.State.Chassis RequestedPowerTransition s xyz.openbmc_project.State.Chassis.Transition.Off