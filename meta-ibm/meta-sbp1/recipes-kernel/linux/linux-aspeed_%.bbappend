FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-29"
LINUX_VERSION = "5.15.50"

SRCREV = "b2824bc86bd26756b5566623e14a43b5a2aa9b61"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
