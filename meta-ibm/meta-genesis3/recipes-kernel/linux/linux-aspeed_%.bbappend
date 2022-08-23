FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-31"
LINUX_VERSION = "5.15.50"

SRCREV = "e30e4abb7f66948ccd8282215838913efd466948"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
