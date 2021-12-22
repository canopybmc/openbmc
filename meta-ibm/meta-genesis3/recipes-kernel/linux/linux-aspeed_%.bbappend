FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15"
LINUX_VERSION = "5.15"

SRCREV = "4b0a56a49f687b405dbdda194eecf69535513c20"

KSRC = "git://github.com/9elements/linux;protocol=git;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
