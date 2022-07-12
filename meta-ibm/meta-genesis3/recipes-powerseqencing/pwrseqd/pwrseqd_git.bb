SUMMARY = "Power sequencing daemon"
DESCRIPTION = "universal userspace powerseqencing, fault handling and ACPI state tracking"
HOMEPAGE = "https://9esec.io"
BUGTRACKER = "https://github.com/9elements/pwrseqd/issues"
SECTION = "base"

LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=3b83ef96387f14655fc854ddc3c6bd57"

BRANCH = "main"
SRC_URI = "git://github.com/9elements/pwrseqd.git;branch=${BRANCH};protocol=https"
SRCREV = "f7e116dc0a57de0af743ba4ccf8deddb82771afa"

S = "${WORKDIR}/git"

inherit cmake systemd pkgconfig

DEPENDS += "systemd"
DEPENDS += "boost"
DEPENDS += "libgpiod"
DEPENDS += "libyaml"
DEPENDS += "yaml-cpp"
DEPENDS += "sdbusplus"
DEPENDS += "phosphor-logging"

EXTRA_OECMAKE = "\
                 -DBUILD_TESTS=OFF \
                 -DBUILD_EXAMPLE=OFF \
                 -DGIT_SUBMODULE=OFF \
                 "

SYSTEMD_SERVICE:${PN} += "xyz.openbmc_project.Chassis.Control.Power@${MACHINE}.service \
                          chassis-system-reset.service \
                          chassis-system-reset.target"

FILES:${PN}  += "${systemd_system_unitdir}/xyz.openbmc_project.Chassis.Control.Power@.service"
FILES:${PN}  += "${systemd_system_unitdir}/chassis-system-reset.service"
FILES:${PN}  += "${systemd_system_unitdir}/chassis-system-reset.target"
