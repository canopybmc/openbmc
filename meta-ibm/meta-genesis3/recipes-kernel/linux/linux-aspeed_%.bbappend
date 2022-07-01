FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-25"
LINUX_VERSION = "5.15.50"

SRCREV = "6179672ec45c5099ac8fcbb5231bcf72066e23a7"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
