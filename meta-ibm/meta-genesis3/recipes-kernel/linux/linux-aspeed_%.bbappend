FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-14"
LINUX_VERSION = "5.15"

SRCREV = "e0afae5cfb954c356d1592c992db179087bdf272"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
