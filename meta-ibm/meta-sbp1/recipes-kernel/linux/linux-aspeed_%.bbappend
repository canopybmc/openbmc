FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-51"
LINUX_VERSION = "5.15.50"

SRCREV = "97c4c656b66d8e61d94f9b18f7f402e2517a490b"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
