FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-13"
LINUX_VERSION = "5.15"

SRCREV = "9436f982f3fb5b38721c8cce545775310353adf2"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
