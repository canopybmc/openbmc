FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-41"
LINUX_VERSION = "5.15.50"

SRCREV = "d6790466b04e73d1dd79b45e709b60677ad20d57"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
