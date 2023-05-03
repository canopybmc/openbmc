FILESEXTRAPATHS:prepend:sbp1 := "${THISDIR}/${PN}:"

SRC_URI:append:sbp1 = " \
    file://blacklist.json \
    file://sbp1-baseboard.json \
    file://sbp1-chassis.json \
    file://sbp1-psu.json \
    "

do_install:append:sbp1 () {
    install -m 0644 -D ${WORKDIR}/blacklist.json ${D}${datadir}/${PN}/blacklist.json
    rm -f ${D}/usr/share/entity-manager/configurations/*.json
    install -d ${D}/usr/share/entity-manager/configurations
    install -m 0444 ${WORKDIR}/sbp1-baseboard.json ${D}/usr/share/entity-manager/configurations
    install -m 0444 ${WORKDIR}/sbp1-chassis.json ${D}/usr/share/entity-manager/configurations
    install -m 0444 ${WORKDIR}/sbp1-psu.json ${D}/usr/share/entity-manager/configurations
}
