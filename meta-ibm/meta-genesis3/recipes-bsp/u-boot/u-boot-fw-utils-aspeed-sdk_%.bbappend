FILESEXTRAPATHS:append := "${THISDIR}/${BPN}:"
# In order to reuse and easily maintain, we use the same patch files among u-boot-aspeed-sdk
FILESEXTRAPATHS:append := "${THISDIR}/u-boot-aspeed-sdk:"

SRC_URI:append = " file://defconfig.cfg \
		   file://fw_env.config \
                   file://0001-arch-arm-dts-Add-ibm-genesis3.dts.patch \
		   file://0002-ast_g5-Route-uart-to-uart1.patch \
		   file://0003-platform.S-Stop-WDT2.patch \
		   file://0004-fw_env-Store-default-loaded-env-and-mac-address.patch \
                 "


do_install:append () {
        install -d ${D}${sysconfdir}
        install -m 0644 ${WORKDIR}/fw_env.config ${D}${sysconfdir}/fw_env.config
        install -m 0644 ${WORKDIR}/fw_env.config ${S}/tools/env/fw_env.config
}

