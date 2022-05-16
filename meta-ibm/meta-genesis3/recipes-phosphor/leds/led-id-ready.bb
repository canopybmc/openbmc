LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://${COREBASE}/meta/files/common-licenses/Apache-2.0;md5=89aea4e17d99a7cacdbeed46a0096b10"

inherit allarch systemd

DEPENDS += "systemd"
RDEPENDS:${PN} += "libsystemd"
RDEPENDS:${PN} += "bash"


SRC_URI += "file://led-network-ready.service \
	file://led_id_dwr_ready.sh \
	"

SYSTEMD_PACKAGES = "${PN}"
SYSTEMD_SERVICE:${PN} += " led-network-ready.service"

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/led_id_dwr_ready.sh ${D}${bindir}/led_id_dwr_ready.sh

    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/led-network-ready.service ${D}${systemd_system_unitdir}
}
