FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-55"
LINUX_VERSION = "5.15.50"

SRCREV = "d5f61d43fbbc6744b3683ba5849406d861492b07"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
