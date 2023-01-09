FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-55"
LINUX_VERSION = "5.15.50"

SRCREV = "19239086eb5a3d9f4bb25e0b71cebc11cad7f189"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
