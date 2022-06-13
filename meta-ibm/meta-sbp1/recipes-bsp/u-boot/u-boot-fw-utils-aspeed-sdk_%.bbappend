FILESEXTRAPATHS:append := "${THISDIR}/${BPN}:"
# In order to reuse and easily maintain, we use the same patch files among u-boot-aspeed-sdk
FILESEXTRAPATHS:append := "${THISDIR}/u-boot-aspeed-sdk:"

SRC_URI:append:uboot-flash-65536 = " file://fw_env.config"

SRC_URI:append = " file://defconfig.cfg \
                 "


do_install:append () {
        install -d ${D}${sysconfdir}
        install -m 0644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
        install -m 0644 ${WORKDIR}/fw_env.config ${S}/tools/env/fw_env.config
}

