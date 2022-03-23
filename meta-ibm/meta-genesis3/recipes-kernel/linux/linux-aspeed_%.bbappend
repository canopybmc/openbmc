FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-17"
LINUX_VERSION = "5.15"

SRCREV = "bdfa9d9fd932b9be1e9fd5f3e530bd01b3513aca"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
