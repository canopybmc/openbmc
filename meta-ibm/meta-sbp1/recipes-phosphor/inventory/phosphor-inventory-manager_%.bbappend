FILESEXTRAPATHS:prepend:genesis3 := "${THISDIR}/${PN}:"
PACKAGECONFIG:append:genesis3 = " associations"
SRC_URI:append:genesis3 = " file://associations.json"
DEPENDS:append:genesis3 = " inventory-cleanup"

do_install:append:genesis3() {
    install -d ${D}${base_datadir}
    install -m 0755 ${WORKDIR}/associations.json ${D}${base_datadir}/associations.json
}
