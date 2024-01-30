FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-6.5-13"
LINUX_VERSION = "6.5.4"

SRCREV = "801a846f735241ba2029deec2c4b542274c5cd06"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
