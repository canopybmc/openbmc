FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

PACKAGECONFIG:p10bmc = "hwmontempsensor"
PACKAGECONFIG:sbp1 = " \
    hwmontempsensor \
    fansensor \
    psusensor \
    intelcpusensor \
    adcsensor \
    "
SRC_URI:append:sbp1 = " \
		file://0001-fansensor-fix-fan-sensor-service-crash.patch    \
		file://0002-clang-tidy-reduce-repo-specific-flags.patch     \
		file://0003-IntelCPUSensor-Use-libpeci-when-communicating-via-pe.patch     \
		file://0004-Fix-PECI-client-creation-flow.patch                           \
		file://0005-Fix-format-in-HwmonMain.cpp-to-pass-format-check.patch     \
		file://0006-IntelCPUSensor-retry-when-hwmon-nodes-not-found.patch     \
		file://0007-IntelCPUSensor-support-new-Linux-PECI-API.patch \
		"
