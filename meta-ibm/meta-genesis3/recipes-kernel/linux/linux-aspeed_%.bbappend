FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-30"
LINUX_VERSION = "5.15.50"

SRCREV = "09b1bdeb597e13b228904da04bf129d631ebb9a1"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
