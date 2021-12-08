FILESEXTRAPATHS_prepend_gen3 := "${THISDIR}/${PN}:"

SRC_URI_append_gen3 = " file://config-ibm-genesis3.json"
SRC_URI_append_gen3 = " file://fan-full-speed.sh"
SRC_URI_append_gen3 = " file://phosphor-pid-control.service"
SRC_URI_append_gen3 = " file://fan-reboot-control.service"

FILES_${PN}_append_gen3 = " ${bindir}/fan-full-speed.sh"
FILES_${PN}_append_gen3 = " ${datadir}/swampd/config.json"

RDEPENDS_${PN} += "bash"

SYSTEMD_SERVICE_${PN}_append_gen3 = " phosphor-pid-control.service"
SYSTEMD_SERVICE_${PN}_append_gen3 = " fan-reboot-control.service"

do_install_append_gen3() {
    install -d ${D}/${bindir}
    install -m 0755 ${WORKDIR}/fan-full-speed.sh ${D}/${bindir}

    install -d ${D}${datadir}/swampd
    install -m 0644 -D ${WORKDIR}/config-ibm-genesis3.json \
        ${D}${datadir}/swampd/config.json

    install -d ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/phosphor-pid-control.service \
        ${D}${systemd_unitdir}/system
    install -m 0644 ${WORKDIR}/fan-reboot-control.service \
        ${D}${systemd_unitdir}/system
}
