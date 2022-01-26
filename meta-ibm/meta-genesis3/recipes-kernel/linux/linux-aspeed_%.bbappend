FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-12"
LINUX_VERSION = "5.15"

SRCREV = "3f8a87fe029554f410bf62c7de51e54e8ff29dc0"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
