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

ITEMS:append:genesis3 += " iio-hwmon.conf"
ITEMS:append:genesis3 += " iio-hwmon-rtcbat.conf"
ITEMS:append:genesis3 += " iio-hwmon-fan-ssbs.conf"

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE:${PN}:append:genesis3 = " ${@compose_list(d, 'ENVS', 'ITEMS')}"
