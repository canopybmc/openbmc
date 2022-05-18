FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-20"
LINUX_VERSION = "5.15"

SRCREV = "0dabb6ef78b6791675110292a027eacf18c57ff2"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
