FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://bios-update.sh \
"

PACKAGECONFIG:append = " flash_bios"
RDEPENDS:${PN} += "bash"

do_install:append() {
    install -d ${D}/${sbindir}
    install -m 0755 ${UNPACKDIR}/bios-update.sh ${D}/${sbindir}/
}
