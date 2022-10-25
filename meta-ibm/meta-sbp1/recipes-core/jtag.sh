#!/bin/sh   
pin_set (){

	pin=$(gpiofind $1)
	echo Setting $1 to $2 
	gpioset ${pin}=$2

}

reset_jtag_chip() {

	# Disable output
	pin_set "JTAG_MUX_ENBL_N" 1
	# Rest chip
	pin_set "JTAG_MUX_RST_N" 0
	sleep 0.5
	# Bring out of reset
	pin_set "JTAG_MUX_RST_N" 1
	# Output Enable
	pin_set "JTAG_MUX_ENBL_N" 0
	sleep 0.5

}

echo 1. MPsel high to select XDP conn.
pin_set "JTAG_MUX_MSTR_SEL" 1

echo 2. OE_N low to enable JTAG port
pin_set "JTAG_MUX_ENBL_N" 0

echo 3. Remove the chip out of reset.
pin_set "JTAG_MUX_RST_N" 1

echo 4. Trans bit is not applicable as scanbridge mode is used.
pin_set "JTAG_MUX_TRANS_ENBL" 0 

echo 5. SB/S_N high to select scanbridge mode.
pin_set "JTAG_MUX_MODE_SEL" 1 

echo 6. LSPsel not applicable for scanbridge mode
lspsel=" JTAG_MUX_TRANS_ENBL JTAG_MUX_LSP_SEL1 JTAG_MUX_LSP_SEL2 JTAG_MUX_LSP_SEL3 JTAG_MUX_LSP_SEL4 JTAG_MUX_LSP_SEL5"


for i in $lspsel; do
	pin_set $i 0
done



