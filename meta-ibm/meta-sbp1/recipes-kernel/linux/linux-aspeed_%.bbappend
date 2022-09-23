FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-45"
LINUX_VERSION = "5.15.50"

SRCREV = "4f3deb075f6c6f6e2ee6a8fcc01b2820e127b754"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
