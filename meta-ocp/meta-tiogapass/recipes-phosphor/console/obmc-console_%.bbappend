FILESEXTRAPATHS:append := ":${THISDIR}/${PN}"

OBMC_CONSOLE_HOST_TTY = "ttyVUART0"

SRC_URI:append = " \
    file://server.ttyVUART0.conf \
"

do_install:append() {
        # Install the server configuration
        install -m 0755 -d ${D}${sysconfdir}/${BPN}
        install -m 0644 ${UNPACKDIR}/*.conf ${D}${sysconfdir}/${BPN}/
}
