FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-22"
LINUX_VERSION = "5.15"

SRCREV = "b9b6a0fa7d95a6c1058beb0fdc8a8d0e12d47113"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
