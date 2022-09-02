FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-39"
LINUX_VERSION = "5.15.50"

SRCREV = "8325454d332d112216e11c1882b42ad7157be906"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
