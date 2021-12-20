FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15"
LINUX_VERSION = "5.15"

SRCREV = "f19092077af6701c1b0c36277d381fc283abc6a4"

KSRC = "git://github.com/9elements/linux;protocol=git;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
