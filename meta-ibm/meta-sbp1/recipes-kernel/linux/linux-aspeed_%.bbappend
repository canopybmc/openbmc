FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-49"
LINUX_VERSION = "5.15.50"

SRCREV = "7c055ae590d94f98dafbbe1080111b0a4d40452e"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
