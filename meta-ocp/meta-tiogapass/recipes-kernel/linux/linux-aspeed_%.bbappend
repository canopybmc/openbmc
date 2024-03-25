FILESEXTRAPATHS:prepend := "${THISDIR}/linux-aspeed:"

SRC_URI:append = " \
    file://aspeed-bmc-ocp-tiogapass.dts;subdir=git/arch/${ARCH}/boot/dts/${KMACHINE} \
    file://tiogapass.cfg \
"
