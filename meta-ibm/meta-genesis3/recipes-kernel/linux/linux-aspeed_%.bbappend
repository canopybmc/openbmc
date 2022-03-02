FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-16"
LINUX_VERSION = "5.15"

SRCREV = "ff7c7c8b1826155f5a12988c61ac8a2a9d4b9dcb"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
