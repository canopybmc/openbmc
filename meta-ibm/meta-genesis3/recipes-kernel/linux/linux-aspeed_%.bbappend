FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-2"
LINUX_VERSION = "5.15"

SRCREV = "5eecab4d00f8dfc015eb6dfdda97292de9819fa1"

KSRC = "git://github.com/9elements/linux;protocol=git;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
