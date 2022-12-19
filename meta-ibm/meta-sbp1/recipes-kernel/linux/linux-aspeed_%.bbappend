FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-54"
LINUX_VERSION = "5.15.50"

SRCREV = "1827d86c134eeb0797bbbbd7f00156a6b00ed017"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
