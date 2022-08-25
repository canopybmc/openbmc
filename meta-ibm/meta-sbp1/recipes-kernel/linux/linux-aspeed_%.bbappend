FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-34"
LINUX_VERSION = "5.15.50"

SRCREV = "69199bc02129650dcc2aa2890aa9311d4a54b77f"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://sbp1.cfg"
