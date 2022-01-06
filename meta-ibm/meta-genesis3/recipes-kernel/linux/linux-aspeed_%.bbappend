FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-6"
LINUX_VERSION = "5.15"

SRCREV = "cb8f874ae263abf44708a96d808a68a7c34c8072"

KSRC = "git://github.com/9elements/linux;protocol=git;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
