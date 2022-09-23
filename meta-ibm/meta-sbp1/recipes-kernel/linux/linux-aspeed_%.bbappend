FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-46"
LINUX_VERSION = "5.15.50"

SRCREV = "44fa1f345879718e49a55ff9dbc9ca0ead7302ed"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
