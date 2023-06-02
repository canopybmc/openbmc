FILESEXTRAPATHS:append := "${THISDIR}/${PN}:"

SRC_URI += " file://fstab.sbp1 "

do_install:append:sbp1 () {
	rm -f  ${D}${sysconfdir}/fstab
	install -D -m 0644 ${WORKDIR}/fstab.sbp1 ${D}${sysconfdir}/fstab
}

