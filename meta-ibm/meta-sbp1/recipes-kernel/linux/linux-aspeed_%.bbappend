FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-6.5-8"
LINUX_VERSION = "6.5.4"

SRCREV = "9e1600e01f533420e474002807db004648a2aa02"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
