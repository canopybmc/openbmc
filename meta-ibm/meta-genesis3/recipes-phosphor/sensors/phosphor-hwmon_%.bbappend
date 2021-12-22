FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

EXTRA_OEMESON:append:genesis3 = " \
  -Dupdate-functional-on-fail=true \
  -Dnegative-errno-on-fail=false \
"

CHIPS_PSU = " \
        i2c@4/regulator@5f \
        i2c@5/regulator@5f \
        i2c@6/regulator@5f \
        i2c@7/regulator@5f \
        "
ITEMSFMT = "ahb/apb/bus@1e78a000/i2c-bus@480/mux@77/i2c@7/mux@70/{0}.conf"

ITEMS = "${@compose_list(d, 'ITEMSFMT', 'CHIPS_PSU')}"

CHIPS_FAN = " \
        i2c@0/mux@70/i2c@0/hwmon@2e \
        i2c@0/mux@70/i2c@1/hwmon@2e \
        i2c@0/mux@70/i2c@2/hwmon@2e \
        i2c@0/mux@70/i2c@3/hwmon@2e \
        i2c@0/mux@70/i2c@4/hwmon@2e \
        i2c@0/mux@70/i2c@5/hwmon@2e \
        i2c@0/mux@70/i2c@6/hwmon@2e \
        i2c@0/mux@70/i2c@7/hwmon@2e \
        i2c@1/mux@70/i2c@0/hwmon@2e \
        i2c@1/mux@70/i2c@1/hwmon@2e \
        i2c@1/mux@70/i2c@2/hwmon@2e \
        i2c@1/mux@70/i2c@3/hwmon@2e \
        i2c@1/mux@70/i2c@4/hwmon@2e \
        i2c@1/mux@70/i2c@5/hwmon@2e \
        i2c@1/mux@70/i2c@6/hwmon@2e \
        i2c@1/mux@70/i2c@7/hwmon@2e \
        i2c@2/mux@70/i2c@0/hwmon@2e \
        i2c@2/mux@70/i2c@1/hwmon@2e \
        i2c@2/mux@70/i2c@2/hwmon@2e \
        i2c@2/mux@70/i2c@3/hwmon@2e \
        i2c@2/mux@70/i2c@4/hwmon@2e \
        i2c@2/mux@70/i2c@5/hwmon@2e \
        i2c@2/mux@70/i2c@6/hwmon@2e \
        i2c@2/mux@70/i2c@7/hwmon@2e \
        "
ITEMSFMT2 = "ahb/apb/bus@1e78a000/i2c-bus@400/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT2', 'CHIPS_FAN')}"

CHIPS_CPU0 = " \
        i2c@2/ir38164_pvccio_cpu0@40 \
        i2c@3/xdpe_pvccin_pvccsa_cpu0@40 \
        i2c@4/xdpe_pvddq_def_pvpp_def_cpu0@40 \
        i2c@5/xdpe_pvddq_abc_pvpp_abc_cpu0@40 \
        "
ITEMSFMT3 = "ahb/apb/bus@1e78a000/i2c-bus@3c0/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT3', 'CHIPS_CPU0')}"

CHIPS_CPU1 = " \
        i2c@1/ir38164_pvccio_cpu1@40 \
        i2c@5/xdpe_pvddq_klm_pvpp_klm_cpu1@40 \
        i2c@6/xdpe_pvccin_pvccsa_cpu1@40 \
        i2c@7/xdpe_pvddq_ghj_pvpp_ghj_cpu1@40 \
        "
ITEMSFMT4 = "ahb/apb/bus@1e78a000/i2c-bus@300/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT4', 'CHIPS_CPU1')}"

CHIPS_CPU2 = " \
        i2c@1/ir38164_pvccio_cpu2@40 \
        i2c@2/xdpe_pvccin_pvccsa_cpu2@40 \
        i2c@3/xdpe_pvddq_npq_pvpp_npq_cpu2@40 \
        i2c@4/xdpe_pvddq_rst_pvpp_rst_cpu2@40 \
        "
ITEMSFMT5 = "ahb/apb/bus@1e78a000/i2c-bus@1c0/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT5', 'CHIPS_CPU2')}"

CHIPS_CPU3 = " \
        i2c@1/ir38164_pvccio_cpu3@40 \
        i2c@2/xdpe_pvddq_uvw_pvpp_uvw_cpu3@40 \
        i2c@4/xdpe_pvccin_pvccsa_cpu3@40 \
        i2c@5/xdpe_pvddq_xyz_pvpp_xyz_cpu3@40 \
        "
ITEMSFMT6 = "ahb/apb/bus@1e78a000/i2c-bus@440/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT6', 'CHIPS_CPU3')}"

ITEMS:append:genesis3 += " iio-hwmon.conf"
ITEMS:append:genesis3 += " iio-hwmon-rtcbat.conf"
ITEMS:append:genesis3 += " iio-hwmon-fan-ssbs.conf"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append:genesis3 = " ${@compose_list(d, 'ENVS', 'ITEMS')}"
