FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-15"
LINUX_VERSION = "5.15"

SRCREV = "d30ac1727b7e682a859ac5e73a92aa268b028a94"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
