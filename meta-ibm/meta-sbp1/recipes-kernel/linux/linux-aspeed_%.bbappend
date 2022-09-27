FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-47"
LINUX_VERSION = "5.15.50"

SRCREV = "5609431577b35b25cde06fbdb63ff63e2e973b5e"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
