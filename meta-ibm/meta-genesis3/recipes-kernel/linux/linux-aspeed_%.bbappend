FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.15-11"
LINUX_VERSION = "5.15"

SRCREV = "cf602d22cc9cad88bb4f0edfbb448b6260cc3003"

KSRC = "git://github.com/9elements/linux;protocol=https;branch=${KBRANCH}"
SRC_URI += "file://genesis3.cfg"
