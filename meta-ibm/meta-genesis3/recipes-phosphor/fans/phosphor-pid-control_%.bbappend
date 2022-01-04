FILESEXTRAPATHS:prepend:genesis3 := "${THISDIR}/${PN}:"

SRC_URI:append:genesis3 = " file://config-ibm-genesis3.json"
SRC_URI:append:genesis3 = " file://fan-default-speed.sh"
SRC_URI:append:genesis3 = " file://phosphor-pid-control.service"
SRC_URI:append:genesis3 = " file://fan-reboot-control.service"

FILES:${PN}:append:genesis3 = " ${bindir}/fan-default-speed.sh"
FILES:${PN}:append:genesis3 = " ${datadir}/swampd/config.json"

RDEPENDS:${PN} += "bash"

SYSTEMD_SERVICE:${PN}:append:genesis3 = " phosphor-pid-control.service"
SYSTEMD_SERVICE:${PN}:append:genesis3 = " fan-reboot-control.service"

do_install:append:genesis3() {
    install -d ${D}/${bindir}
    install -m 0755 ${WORKDIR}/fan-default-speed.sh ${D}/${bindir}

    install -d ${D}${datadir}/swampd
    install -m 0644 -D ${WORKDIR}/config-ibm-genesis3.json \
        ${D}${datadir}/swampd/config.json

    install -d ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/phosphor-pid-control.service \
        ${D}${systemd_unitdir}/system
    install -m 0644 ${WORKDIR}/fan-reboot-control.service \
        ${D}${systemd_unitdir}/system
}
