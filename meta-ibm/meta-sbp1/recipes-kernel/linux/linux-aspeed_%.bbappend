FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-37"
LINUX_VERSION = "5.15.50"

SRCREV = "ad1a58d7edd5b738887d4080dde52c93454f7199"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
