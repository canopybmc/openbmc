FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-27"
LINUX_VERSION = "5.15.50"

SRCREV = "9e84f2f7bdb5435d917d3b36661cf2e58376e040"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
