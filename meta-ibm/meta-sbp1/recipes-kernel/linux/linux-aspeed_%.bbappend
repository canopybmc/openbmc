FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-56"
LINUX_VERSION = "5.15.50"

SRCREV = "a22ed341fd192c5a057c596dd769b89d928a0780"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
