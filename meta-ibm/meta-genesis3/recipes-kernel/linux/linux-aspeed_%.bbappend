FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-33"
LINUX_VERSION = "5.15.50"

SRCREV = "b271746e9ed3b22f9591242e7245f51f2520083e"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
