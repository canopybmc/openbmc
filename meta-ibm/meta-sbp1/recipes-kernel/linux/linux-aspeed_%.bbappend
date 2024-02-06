FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-6.5-14"
LINUX_VERSION = "6.5.4"

SRCREV = "78524e5dfc5084c0d66d31feefa3ed7aa1a18f09"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
