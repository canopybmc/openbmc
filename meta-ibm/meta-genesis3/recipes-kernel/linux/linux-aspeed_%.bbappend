FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15"
LINUX_VERSION = "5.15"

SRCREV = "c3e933f70337342f516d012307370aed3c3fe70d"

KSRC = "git://github.com/9elements/linux;protocol=git;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
