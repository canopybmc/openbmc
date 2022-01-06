FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-5"
LINUX_VERSION = "5.15"

SRCREV = "b83bf36c612dda4f2753a834df6b75007ceaa799"

KSRC = "git://github.com/9elements/linux;protocol=git;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
