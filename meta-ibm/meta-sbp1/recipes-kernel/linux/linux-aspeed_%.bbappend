FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-52"
LINUX_VERSION = "5.15.50"

SRCREV = "04728671584461e12ee8fbeacc57314652ae866f"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
