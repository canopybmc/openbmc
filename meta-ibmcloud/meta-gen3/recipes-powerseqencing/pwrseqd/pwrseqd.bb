SUMMARY = "Power sequencing daemon"
DESCRIPTION = "universal userspace powerseqencing, fault handling and ACPI state tracking"
HOMEPAGE = "https://9esec.io"
BUGTRACKER = "https://github.com/9elements/openbmc-x86-power-sequencer/"
SECTION = "base"

#LICENSE = "Apache-2.0"
#LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=3b83ef96387f14655fc854ddc3c6bd57"
SRC_URI = "git@github.com:9elements/openbmc-x86-power-sequencer.git"
SRCREV = "d096ad494255242dfd815e1e1ed727040b9acc7c"

S = "${WORKDIR}/git"

inherit cmake

DEPENDS += "boost"
DEPENDS += "libgpiod"
DEPENDS += "libyaml"

EXTRA_OECMAKE = "\
                 -DBUILD_TESTS=OFF \
                 -DBUILD_EXAMPLE=OFF \
                 "