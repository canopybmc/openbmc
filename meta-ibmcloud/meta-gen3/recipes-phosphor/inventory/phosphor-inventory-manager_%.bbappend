DEPENDS_append_gen3 = " inventory-cleanup"

FILESEXTRAPATHS_prepend_gen3 := "${THISDIR}/${PN}:"
PACKAGECONFIG_append_gen3 = " associations"
SRC_URI_append_gen3 = " file://associations.json"

do_install_append_gen3() {
    install -d ${D}${base_datadir}
    install -m 0755 ${WORKDIR}/associations.json ${D}${base_datadir}/associations.json
}
