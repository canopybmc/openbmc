FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-28"
LINUX_VERSION = "5.15.50"

SRCREV = "7226e90e9fbf2f60f3717262ec294cf0a47b1959"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
