FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-6.0-1"
LINUX_VERSION = "6.0.10"

SRCREV = "fb35175c2fae2c5f7b01dc5660ce0a4febc0332b"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
