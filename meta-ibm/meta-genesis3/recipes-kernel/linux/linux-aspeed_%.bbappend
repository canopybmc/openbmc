FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15"
LINUX_VERSION = "5.15"

SRCREV = "b1e8447df2879e32e4baa3cd10e11dcfea4baf78"

KSRC = "git://github.com/9elements/linux;protocol=git;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
