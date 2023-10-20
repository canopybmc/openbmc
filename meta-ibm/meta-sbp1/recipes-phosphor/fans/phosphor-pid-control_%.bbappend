FILESEXTRAPATHS:prepend:sbp1 := "${THISDIR}/${PN}:"

SRC_URI:append:sbp1 = " file://phosphor-pid-control.service"
SRC_URI:append:sbp1 = " file://fan-setup.service"
SRC_URI:append = " file://0002-main-Gracefully-handle-SIGTERM.patch \
                   file://0003-pid-fancontroller-Set-failsafe-PWM-in-destructor.patch \
                 "

SYSTEMD_SERVICE:${PN}:append:sbp1 = " phosphor-pid-control.service"
SYSTEMD_SERVICE:${PN}:append:sbp1 = " fan-setup.service"

do_install:append:sbp1() {
    install -d ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/phosphor-pid-control.service \
        ${D}${systemd_unitdir}/system
    install -m 0644 ${WORKDIR}/fan-setup.service \
        ${D}${systemd_unitdir}/system
}
