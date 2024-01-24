FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-6.5-9"
LINUX_VERSION = "6.5.4"

SRCREV = "5e11df2e6590db66a53737138114bddf3d59b20c"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
