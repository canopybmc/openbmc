FILESEXTRAPATHS:prepend:sbp1 := "${THISDIR}/${PN}:"
PACKAGECONFIG:append:sbp1 = " associations"
SRC_URI:append:sbp1 = " file://associations.json"
DEPENDS:append:sbp1 = " inventory-cleanup"

do_install:append:sbp1() {
    install -d ${D}${base_datadir}
    install -m 0755 ${WORKDIR}/associations.json ${D}${base_datadir}/associations.json
}
