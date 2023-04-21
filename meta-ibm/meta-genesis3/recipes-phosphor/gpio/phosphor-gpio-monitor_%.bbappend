FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
inherit systemd
inherit obmc-phosphor-systemd
RDEPENDS:${PN}-monitor += "bash"
RDEPENDS:${PN} += "bash"

SRC_URI += " \
            file://phosphor-multi-gpio-monitor.service \
            file://phosphor-multi-gpio-monitor-gen-config.sh \
            file://dbus-object-presence.sh \
            file://dbus-object-present@.service \
           "
SYSTEMD_SERVICE:${PN}-monitor += " \
                                  dbus-object-present@.service \
                                  phosphor-multi-gpio-monitor.service \
                                 "
FILES:${PN}-monitor += " \
                        /usr/bin/dbus-object-presence.sh \
                        /usr/bin/phosphor-multi-gpio-monitor-gen-config.sh \
                        /usr/share/phosphor-gpio-monitor/ \
                       "

SYSTEMD_LINK:${PN}-monitor:append = " ../phosphor-multi-gpio-monitor.service:multi-user.target.requires/phosphor-multi-gpio-monitor.service"

do_install:append() {
    install -d ${D}${bindir}
    install -d ${D}${datadir}/phosphor-gpio-monitor/
    install -m 0755 ${WORKDIR}/dbus-object-presence.sh ${D}${bindir}/
    install -m 0755 ${WORKDIR}/phosphor-multi-gpio-monitor-gen-config.sh ${D}${bindir}/
}