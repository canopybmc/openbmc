FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15"
LINUX_VERSION = "5.15"

SRCREV = "${AUTOREV}"

KSRC = "git://github.com/9elements/linux;protocol=git;branch=${KBRANCH}"
SRC_URI += "file://gen3.cfg"
