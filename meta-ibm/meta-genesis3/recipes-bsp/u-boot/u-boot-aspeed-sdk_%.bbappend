FILESEXTRAPATHS:append := "${THISDIR}/${BPN}:"

SRC_URI:append = " file://defconfig.cfg \
                   file://0001-arch-arm-dts-Add-ibm-genesis3.dts.patch \
		   file://0002-ast_g5-Route-uart-to-uart1.patch \
		   file://0003-platform.S-Stop-WDT2.patch \
                 "
