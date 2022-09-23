FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-43"
LINUX_VERSION = "5.15.50"

SRCREV = "c87817271606ff82c15390910b675ee45868d807"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
