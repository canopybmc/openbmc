FILESEXTRAPATHS:prepend:genesis3 := "${THISDIR}/${PN}:"

SRC_URI:append:genesis3 = " \
    file://blacklist.json \
    "

do_install:append:genesis3 () {
    install -m 0644 -D ${WORKDIR}/blacklist.json ${D}${datadir}/${PN}/blacklist.json
}
