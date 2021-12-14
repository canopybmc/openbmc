FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append:genesis3 = " file://override.conf"

# Genesis3 uses both BMC's RGMII MACs, so wait for only one to be online
do_install:append:genesis3() {
        install -d ${D}${systemd_system_unitdir}/systemd-networkd-wait-online.service.d/
        install -m 644 -D ${WORKDIR}/override.conf ${D}${systemd_system_unitdir}/systemd-networkd-wait-online.service.d/override.conf
}
