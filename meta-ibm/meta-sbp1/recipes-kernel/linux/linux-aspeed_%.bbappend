FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-21"
LINUX_VERSION = "5.15"

SRCREV = "093819a53d0b12a049eca8fc975a0afdc99dbc17"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
