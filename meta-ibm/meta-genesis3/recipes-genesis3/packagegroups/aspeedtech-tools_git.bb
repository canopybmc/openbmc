# Note, we can probably remove the lzma option as it has be replaced with xz,
# and I don't think the kernel supports it any more.
SUMMARY = "Aspeed BMC related tools."
HOMEPAGE = "https://github.com/AspeedTech-BMC/aspeed_app"
DESCRIPTION = "Aspeed BMC related tools."
SECTION = "base"
LICENSE = "CLOSED"

SRCREV = "e41ca51cbd69e739119d60df46daa2f8530e5094"
SRC_URI = "git://github.com/AspeedTech-BMC/aspeed_app;protocol=https"

S = "${WORKDIR}/git/espi_test"

do_compile() {
	${CC} ${CFLAGS} ${LDFLAGS} perif-test.c -o perif-test
	${CC} ${CFLAGS} ${LDFLAGS} vw-test.c -o vw-test
	${CC} ${CFLAGS} ${LDFLAGS} mafs-test.c -o mafs-test
	${CC} ${CFLAGS} ${LDFLAGS} safs-test.c -o safs-test
	${CC} ${CFLAGS} ${LDFLAGS} oob-pch-test.c -o oob-pch-test
	${CC} ${CFLAGS} ${LDFLAGS} oob-test.c -o oob-test
}

do_install() {
	install -d "${D}${sbindir}"
	oe_runmake install INSTALL_DIR=${D}${sbindir}
}

ARM_INSTRUCTION_SET_armv4 = "arm"
ARM_INSTRUCTION_SET_armv5 = "arm"
ARM_INSTRUCTION_SET_armv6 = "arm"

BBCLASSEXTEND = "native nativesdk"

FILES_${PN} = "${sbindir}/perif-test \
		${sbindir}/vw-test \
		${sbindir}/oob-test \
		${sbindir}/oob-pch-test \
		${sbindir}/safs-test \
		${sbindir}/mafs-test"
