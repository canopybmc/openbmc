
FILES_${PN}-host = ""
DBUS_SERVICE_${PN}-host = ""
SYSTEMD_SERVICE_${PN}-host = ""

DBUS_SERVICE_${PN}-chassis = ""
FILES_${PN}-chassis = "${bindir}/obmcutil"

do_install_append() {
    rm -f ${D}${systemd_system_unitdir}/phosphor-reboot-host@.service
    rm -f ${D}${systemd_system_unitdir}/phosphor-reset-host-reboot-attempts@.service
    rm -f ${D}${systemd_system_unitdir}/xyz.openbmc_project.State.Chassis.service
    rm -f ${D}${systemd_system_unitdir}/xyz.openbmc_project.State.Host.service
    rm -f ${D}${systemd_system_unitdir}/phosphor-clear-one-time@.service
    rm -f ${D}${systemd_system_unitdir}/phosphor-set-host-transition-to-off@.service
    rm -f ${D}${systemd_system_unitdir}/phosphor-set-host-transition-to-running@.service
}