FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-23"
LINUX_VERSION = "5.15"

SRCREV = "1bb238084b0437f01d8fd9cfd16092dd9720f092"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
