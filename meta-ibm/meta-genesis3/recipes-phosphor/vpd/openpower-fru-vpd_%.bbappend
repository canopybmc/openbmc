FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
PACKAGECONFIG = "ibm-parser"
SRCREV = "f457a3ef9b58a824f0608c16fe5bdb445ee24ef0"

FILES:${PN} += " \
                /usr/share/vpd/vpd_inventory.json \
                ${systemd_system_unitdir}/* \
                ${nonarch_base_libdir}/udev/rules.d/70-ibm-spd-paser.rules \
               "

SRC_URI += " \
            file://vpd_inventory.json \
            file://ibm-spd-parser@.service \
            file://70-ibm-spd-paser.rules \
           "

SYSTEMD_SERVICE:${PN} = " \
                         ibm-spd-parser@.service \
                         "

do_install:append() {
        rm -f ${D}${systemd_system_unitdir}/*.service
        rm -f ${D}/${nonarch_base_libdir}/udev/rules.d/70-op-vpd.rules
        rm -rf ${D}/usr/share/vpd/*.json

        install -d ${D}/usr/share/vpd
        install ${WORKDIR}/vpd_inventory.json ${D}/usr/share/vpd
        install -m 0644 ${WORKDIR}/ibm-spd-parser@.service ${D}${systemd_system_unitdir}/
        install -m 0644 ${WORKDIR}/70-ibm-spd-paser.rules ${D}/${nonarch_base_libdir}/udev/rules.d/70-ibm-spd-paser.rules
}