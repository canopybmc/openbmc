FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append:sbp1 = " file://override.conf"

# SBP1 uses both BMC's RGMII MACs, so wait for only one to be online
do_install:append:sbp1() {
        install -d ${D}${systemd_system_unitdir}/systemd-networkd-wait-online.service.d/
        install -m 644 -D ${WORKDIR}/override.conf ${D}${systemd_system_unitdir}/systemd-networkd-wait-online.service.d/override.conf
}
