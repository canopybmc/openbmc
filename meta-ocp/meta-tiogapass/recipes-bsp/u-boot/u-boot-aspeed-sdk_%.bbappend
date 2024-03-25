FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://tiogapass.cfg \
    file://0001-unlock-SCU00.patch \
"
