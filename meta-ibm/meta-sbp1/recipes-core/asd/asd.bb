FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/${MACHINE}:"
SUMMARY = "ASD sequencing daemon"
DESCRIPTION = "At Scale Debug"
SECTION = "base"

LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=0d1c657b2ba1e8877940a8d1614ec560"

BRANCH = "master"
SRC_URI = "git://github.com/Intel-BMC/asd.git;branch=${BRANCH};protocol=https"
SRCREV = "f31661d92e80b3f097d37055f590595898cef6b6"

SRC_URI += " file://jtag.sh \
    "
S = "${WORKDIR}/git"

inherit cmake pkgconfig

DEPENDS += "systemd"
DEPENDS += "libgpiod safec"
DEPENDS += "libpam openssl"

do_install:sbp1() {
	install -d ${D}${bindir}
	install -m 0755 ${WORKDIR}/build/jtag_test ${D}${bindir}/jtag_test
	install -m 0755 ${WORKDIR}/build/asd ${D}${bindir}/asd
	install -m 0755 ${WORKDIR}/jtag.sh ${D}${bindir}/jtag.sh
}
