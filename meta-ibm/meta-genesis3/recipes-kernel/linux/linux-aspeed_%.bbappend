FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-8"
LINUX_VERSION = "5.15"

SRCREV = "35a1adbd385a6213e9795a2c02b8bb5f2ae607fe"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
