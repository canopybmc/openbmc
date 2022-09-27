FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-48"
LINUX_VERSION = "5.15.50"

SRCREV = "0136c5ad3f1aded56d9fcedddd24dcacb19de582"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
