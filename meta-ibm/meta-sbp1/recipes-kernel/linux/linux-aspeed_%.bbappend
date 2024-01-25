FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-6.5-11"
LINUX_VERSION = "6.5.4"

SRCREV = "d68b8f2c83a28d3cfefaabc6bd6af7d1aadf1593"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
