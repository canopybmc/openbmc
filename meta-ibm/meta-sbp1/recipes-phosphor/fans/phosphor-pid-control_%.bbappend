FILESEXTRAPATHS:prepend:sbp1 := "${THISDIR}/${PN}:"

SRC_URI:append:sbp1 = " file://phosphor-pid-control.service"
SRC_URI:append:sbp1 = " file://fan-setup.service"

SYSTEMD_SERVICE:${PN}:append:sbp1 = " phosphor-pid-control.service"
SYSTEMD_SERVICE:${PN}:append:sbp1 = " fan-setup.service"

do_install:append:sbp1() {
    install -d ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/phosphor-pid-control.service \
        ${D}${systemd_unitdir}/system
    install -m 0644 ${WORKDIR}/fan-setup.service \
        ${D}${systemd_unitdir}/system
}
