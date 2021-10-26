FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

EXTRA_OEMESON_append_gen3 = " -Dnegative-errno-on-fail=true"

CHIPS = " \
        bus@1e78a000/i2c-bus@480/mux@77/i2c@7/mux@70/i2c@4/regulator@5f \
        bus@1e78a000/i2c-bus@480/mux@77/i2c@7/mux@70/i2c@5/regulator@5f \
        bus@1e78a000/i2c-bus@480/mux@77/i2c@7/mux@70/i2c@6/regulator@5f \
        bus@1e78a000/i2c-bus@480/mux@77/i2c@7/mux@70/i2c@7/regulator@5f \
        "
ITEMSFMT = "ahb/apb/{0}.conf"

ITEMS = "${@compose_list(d, 'ITEMSFMT', 'CHIPS')}"
ITEMS += "iio-hwmon-12v.conf \
          iio-hwmon-p1v8_bmc_aux.conf \
	  iio-hwmon-p2V5_aux.conf \
	  iio-hwmon-p3v3_aux.conf \
	  iio-hwmon-p3v3_bmc_aux.conf \
	  iio-hwmon-p5v_aux.conf \
	  iio-hwmon-p5v_bmc_aux.conf \
	  "

ENVS = "obmc/hwmon/{0}"
SYSTEMD_ENVIRONMENT_FILE_${PN}_append_gen3 = " ${@compose_list(d, 'ENVS', 'ITEMS')}"
