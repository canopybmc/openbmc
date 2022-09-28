FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-50"
LINUX_VERSION = "5.15.50"

SRCREV = "96835fb4df9c7450fcba9dc04d4d4da61545caf5"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
