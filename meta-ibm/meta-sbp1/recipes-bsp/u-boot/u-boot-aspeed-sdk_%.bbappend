FILESEXTRAPATHS:append := "${THISDIR}/${BPN}:"

SRC_URI:append:uboot-flash-65536 = " file://fw_env.config"

SRC_URI:append = " file://defconfig.cfg \
                   file://0001-board-ibm-sbp1-Add-sbp1-board.patch \
                 "
