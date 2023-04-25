FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI:append:genesis3 = " \
  file://override.conf \
  file://10-env.conf \
  "

FILES:${PN}:append:genesis3 = " \
  ${systemd_unitdir}/system.conf.d/10-env.conf \
  "

# Genesis3 uses both BMC's RGMII MACs, so wait for only one to be online
do_install:append:genesis3() {
        install -d -m 0755 ${D}${systemd_unitdir}/system.conf.d/
        install -m 0644 ${WORKDIR}/10-env.conf ${D}${systemd_unitdir}/system.conf.d/
        install -d ${D}${systemd_system_unitdir}/systemd-networkd-wait-online.service.d/
        install -m 644 -D ${WORKDIR}/override.conf ${D}${systemd_system_unitdir}/systemd-networkd-wait-online.service.d/override.conf
}