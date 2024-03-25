KCS_DEVICE = "ipmi-kcs2"
SMM_DEVICE = "ipmi-kcs3"
SYSTEMD_SERVICE:${PN}:append = " ${PN}@${SMM_DEVICE}.service "
