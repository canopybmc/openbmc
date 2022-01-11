FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-7"
LINUX_VERSION = "5.15"

SRCREV = "40e3a5e06809f078ad14b5776adb0e75eb6b47aa"

KSRC = "git://github.com/9elements/linux;protocol=git;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
