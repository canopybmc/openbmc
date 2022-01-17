FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-9"
LINUX_VERSION = "5.15"

SRCREV = "63f9552b02a0033ee77d60923c4da118a7eae9d2"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
