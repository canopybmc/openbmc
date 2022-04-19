FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-6.0-12"
LINUX_VERSION = "6.1.15"

SRCREV = "a8a0182cddacaf9dfd4b3e4411079c69e9f3995b"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
