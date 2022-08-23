FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-32"
LINUX_VERSION = "5.15.50"

SRCREV = "84cb5ae65159137fc87d438bb8c6c41f7163b23f"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
