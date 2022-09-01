FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-38"
LINUX_VERSION = "5.15.50"

SRCREV = "4e2413643bd80607ab3c09ca7e18e2e4ff81b9ee"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
