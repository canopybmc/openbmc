FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-17"
LINUX_VERSION = "5.15"

SRCREV = "270bae41da62fc7a0d5f28eb17cff55d5d48721c"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
