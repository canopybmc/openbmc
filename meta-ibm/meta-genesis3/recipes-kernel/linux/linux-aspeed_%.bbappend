FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-6.0-8"
LINUX_VERSION = "6.0.10"

SRCREV = "4da6bc55844f3921c777094589a6277427fb6f75"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
