FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-6.0-6"
LINUX_VERSION = "6.0.10"

SRCREV = "1e845fb485935dccf29c56baa6980f13c999f684"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
