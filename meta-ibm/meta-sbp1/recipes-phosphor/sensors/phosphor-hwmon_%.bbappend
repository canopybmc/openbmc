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
ITEMSFMT = "ahb/apb/bus@1e78a000/i2c-bus@700/mux@77/i2c@7/mux@70/{0}.conf"

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
ITEMSFMT2 = "ahb/apb/bus@1e78a000/i2c-bus@800/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT2', 'CHIPS_FAN')}"

CHIPS_CPU0 = " \
        i2c@2/pvccinfaon_pvccfa_cpu0@58 \
        i2c@2/tda38640_pvnn_main_cpu0@40 \
        i2c@3/mp2973_pvccin_pvccfa_cpu0@58 \
        i2c@4/tda38640_pvccd_hv_cpu0@40 \
        i2c@5/tda38640_pvpp_hbm_cpu0@40 \
        "
ITEMSFMT3 = "ahb/apb/bus@1e78a000/i2c-bus@780/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT3', 'CHIPS_CPU0')}"

CHIPS_CPU1 = " \
        i2c@2/pvccinfaon_pvccfa_cpu1@58 \
        i2c@2/tda38640_pvnn_main_cpu1@40 \
        i2c@3/mp2973_pvccin_pvccfa_cpu1@58 \
        i2c@4/tda38640_pvccd_hv_cpu1@40 \
        i2c@5/tda38640_pvpp_hbm_cpu1@40 \
        "
ITEMSFMT4 = "ahb/apb/bus@1e78a000/i2c-bus@400/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT4', 'CHIPS_CPU1')}"

CHIPS_CPU2 = " \
        i2c@2/pvccinfaon_pvccfa_cpu2@58 \
        i2c@2/tda38640_pvnn_main_cpu2@40 \
        i2c@3/mp2973_pvccin_pvccfa_cpu2@58 \
        i2c@4/tda38640_pvccd_hv_cpu2@40 \
        i2c@5/tda38640_pvpp_hbm_cpu2@40 \
        "
ITEMSFMT5 = "ahb/apb/bus@1e78a000/i2c-bus@380/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT5', 'CHIPS_CPU2')}"

CHIPS_CPU3 = " \
        i2c@2/pvccinfaon_pvccfa_cpu3@58 \
        i2c@2/tda38640_pvnn_main_cpu3@40 \
        i2c@3/mp2973_pvccin_pvccfa_cpu3@58 \
        i2c@4/tda38640_pvccd_hv_cpu3@40 \
        i2c@5/tda38640_pvpp_hbm_cpu3@40 \
        "
ITEMSFMT6 = "ahb/apb/bus@1e78a000/i2c-bus@680/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT6', 'CHIPS_CPU3')}"

CHIPS_NIC = " \
        i2c@2/ir38263_pvcore_nic2@40 \
        i2c@3/ir38263_pvcore_nic1@40 \
        i2c@5/ir38263_p3v3_nic@40 \
        i2c@6/ir38263_p1v2_nic@40 \
        i2c@7/ir38263_p1v8_nic@40 \
        "
ITEMSFMT7 = "ahb/apb/bus@1e78a000/i2c-bus@100/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT7', 'CHIPS_NIC')}"

CHIPS_PCH = " \
        i2c@1/ir38263_p1v05_pch_aux@40 \
        i2c@2/ir38060_p1v8_pch_aux@40 \
        "
ITEMSFMT8 = "ahb/apb/bus@1e78a000/i2c-bus@300/mux@77/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT8', 'CHIPS_PCH')}"

CHIPS_SERVICE = " \
        i2c@1/ir38263_p5v_aux@40 \
        i2c@2/ir38263_p3v3_aux@40 \
        "
ITEMSFMT9 = "ahb/apb/bus@1e78a000/i2c-bus@700/mux@77/i2c@7/mux@70/{0}.conf"

ITEMS += "${@compose_list(d, 'ITEMSFMT9', 'CHIPS_SERVICE')}"

ITEMS:append:genesis3 = " iio-hwmon.conf"
ITEMS:append:genesis3 = " iio-hwmon-rtcbat.conf"
ITEMS:append:genesis3 = " iio-hwmon-fan-ssbs.conf"
ITEMS:append:genesis3 = " iio-hwmon-m2-ssb.conf"
ITEMS:append:genesis3 = " iio-hwmon-pch-ssb.conf"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append:sbp1 = " ${@compose_list(d, 'ENVS', 'ITEMS')}"
