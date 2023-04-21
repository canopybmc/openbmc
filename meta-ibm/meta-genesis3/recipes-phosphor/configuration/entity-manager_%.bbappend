FILESEXTRAPATHS:prepend:genesis3 := "${THISDIR}/${PN}:"

SRC_URI:append:genesis3 = " \
    file://blacklist.json \
    file://genesis3-baseboard.json \
    file://genesis3-chassis.json \
    file://genesis3-psu.json \
    "

do_install:append:genesis3 () {
    install -m 0644 -D ${WORKDIR}/blacklist.json ${D}${datadir}/${PN}/blacklist.json
    rm -f ${D}/usr/share/entity-manager/configurations/*.json
    install -d ${D}/usr/share/entity-manager/configurations
    install -m 0444 ${WORKDIR}/genesis3-baseboard.json ${D}/usr/share/entity-manager/configurations
    install -m 0444 ${WORKDIR}/genesis3-chassis.json ${D}/usr/share/entity-manager/configurations
    install -m 0444 ${WORKDIR}/genesis3-psu.json ${D}/usr/share/entity-manager/configurations
}
