SUMMARY = "Intel PIROM decoder for inventory update"
PR = "r1"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"
RDEPENDS:${PN} = "udev bash"

inherit allarch
inherit obmc-phosphor-systemd

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

FILES:${PN} += " \
                ${bindir}/decode-pirom.sh \ 
                ${systemd_system_unitdir}/* \
                ${nonarch_base_libdir}/udev/rules.d/70-intel-pirom-parser.rules \
               "

SRC_URI += " \
            file://decode-pirom.sh \
            file://intel-pirom-parser@.service \
            file://70-intel-pirom-parser.rules \
           "

SYSTEMD_SERVICE:${PN} = " \
                         intel-pirom-parser@.service \
                         "

do_install() {
        install -d ${D}${bindir}
        install -m 755 ${WORKDIR}/decode-pirom.sh ${D}${bindir}

        install -d ${D}${systemd_system_unitdir}/
        install -m 0644 ${WORKDIR}/intel-pirom-parser@.service ${D}${systemd_system_unitdir}/

        install -d ${D}/${nonarch_base_libdir}/udev/rules.d/
        install -m 0644 ${WORKDIR}/70-intel-pirom-parser.rules ${D}/${nonarch_base_libdir}/udev/rules.d/70-intel-pirom-parser.rules
}
