FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-10"
LINUX_VERSION = "5.15"

SRCREV = "85c3392c6c77405349ef939c56980546a26a9a04"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
