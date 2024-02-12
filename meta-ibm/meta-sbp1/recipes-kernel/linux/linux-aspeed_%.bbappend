FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-6.5-15"
LINUX_VERSION = "6.5.4"

SRCREV = "2ae6f135c2e79d4a8715c20c3bf464c5f762691e"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
