FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-53"
LINUX_VERSION = "5.15.50"

SRCREV = "e313b4177171a8de719c0b207277188e534b11f1"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
