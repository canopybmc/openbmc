SUMMARY = "Power sequencing daemon"
DESCRIPTION = "universal userspace powerseqencing, fault handling and ACPI state tracking"
HOMEPAGE = "https://9esec.io"
BUGTRACKER = "https://github.com/9elements/openbmc-x86-power-sequencer/"
SECTION = "base"

LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=3b83ef96387f14655fc854ddc3c6bd57"
SRC_URI = "git://github.com/9elements/openbmc-x86-power-sequencer.git"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git"

inherit cmake systemd

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
                 "

SYSTEMD_SERVICE_${PN} += "xyz.openbmc_project.Chassis.Control.Power@${MACHINE}.service \
                          chassis-system-reset.service \
                          chassis-system-reset.target"

FILES_${PN}  += "${systemd_system_unitdir}/xyz.openbmc_project.Chassis.Control.Power@.service"
FILES_${PN}  += "${systemd_system_unitdir}/chassis-system-reset.service"
FILES_${PN}  += "${systemd_system_unitdir}/chassis-system-reset.target"
