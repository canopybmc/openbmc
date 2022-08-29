FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-36"
LINUX_VERSION = "5.15.50"

SRCREV = "2ca745ee4c97431bd190ca12b981e0b86c97e8b5"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
