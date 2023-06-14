FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-6.0-13"
LINUX_VERSION = "6.1.15"

SRCREV = "b1cbdeaa3fd2b641aa8adcea896e28b1327b6abc"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
