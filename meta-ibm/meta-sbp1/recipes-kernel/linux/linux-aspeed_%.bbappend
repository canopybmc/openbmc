FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-40"
LINUX_VERSION = "5.15.50"

SRCREV = "dfe80ef6ac2d4af88d7d6e2aee5350ce1e1bc0e7"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
