FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.10"
LINUX_VERSION = "5.10.53"

SRCREV = "${AUTOREV}"

KSRC = "git://github.com/9elements/linux;protocol=git;branch=${KBRANCH}"
