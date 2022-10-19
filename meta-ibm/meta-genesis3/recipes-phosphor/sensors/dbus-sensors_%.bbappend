FILESEXTRAPATHS:append := "${THISDIR}/${BPN}:"
PACKAGECONFIG:genesis3 = "\
    hwmontempsensor \
    fansensor \
    psusensor \
    cpusensor \
    "

SRC_URI:append = " file://dbus-sensor.patch \
                 "
