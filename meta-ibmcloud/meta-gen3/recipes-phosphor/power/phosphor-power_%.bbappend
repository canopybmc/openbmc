FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
inherit obmc-phosphor-systemd

SRC_URI += "file://psu.json"

do_install_append() {
    install -D ${WORKDIR}/psu.json ${D}${datadir}/phosphor-power/psu.json
}

FILES_${PN} += "${datadir}/phosphor-power/psu.json"
