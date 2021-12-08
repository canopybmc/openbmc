FILESEXTRAPATHS_prepend_genesis3 := "${THISDIR}/${PN}:"
PACKAGECONFIG_append_genesis3 = " associations"
SRC_URI_append_genesis3 = " file://associations.json"
DEPENDS_append_genesis3 = " inventory-cleanup"

do_install_append_genesis3() {
    install -d ${D}${base_datadir}
    install -m 0755 ${WORKDIR}/associations.json ${D}${base_datadir}/associations.json
}
