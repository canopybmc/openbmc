SUMMARY = "Power sequencing daemon"
DESCRIPTION = "universal userspace powerseqencing, fault handling and ACPI state tracking"
HOMEPAGE = "https://9esec.io"
BUGTRACKER = "https://github.com/9elements/openbmc-x86-power-sequencer/"
SECTION = "base"

LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=3b83ef96387f14655fc854ddc3c6bd57"
SRC_URI = "git://github.com/9elements/openbmc-x86-power-sequencer.git"
SRCREV = "2d8fe7d0f33bdcd8977359f59c82a9c3a0a57dc7"

S = "${WORKDIR}/git"

inherit cmake

DEPENDS += "boost"
DEPENDS += "libgpiod"
DEPENDS += "libyaml"
DEPENDS += "yaml-cpp"

EXTRA_OECMAKE = "\
                 -DBUILD_TESTS=OFF \
                 -DBUILD_EXAMPLE=OFF \
                 "

do_install_append() {
	# In the future these might be required as a dependency for other packages.
	# At the moment just delete them to avoid warnings
	rm -rf ${D}${includedir}/
	rm -rf ${D}${libdir}/
}
