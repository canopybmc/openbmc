SUMMARY = "OpenBMC for IBM Cloud - Applications"
PR = "r1"

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
	${PN}-flash \
	${PN}-fans \
	${PN}-system \
	"

PROVIDES += "virtual/obmc-flash-mgmt"
PROVIDES += "virtual/obmc-fan-mgmt"
PROVIDES += "virtual/obmc-system-mgmt"

RPROVIDES_${PN}-flash += "virtual-obmc-flash-mgmt"
RPROVIDES_${PN}-fans += "virtual-obmc-fan-mgmt"
RPROVIDES_${PN}-system += "virtual-obmc-system-mgmt"

SUMMARY_${PN}-flash = "IBM Cloud Flash"
RDEPENDS_${PN}-flash = " \
	obmc-control-bmc \
	phosphor-ipmi-flash \
	"

SUMMARY_${PN}-fans = "IBM Cloud Fans"
RDEPENDS_${PN}-fans = " \
	phosphor-pid-control \
"

SUMMARY_${PN}-system = "IBM Cloud System"
RDEPENDS_${PN}-system = " \
	bmcweb \
	entity-manager \
	webui-vue \
	phosphor-host-postd \
	phosphor-ipmi-kcs \
	phosphor-post-code-manager \
	phosphor-power-psu-monitor \
	strace \
	ldd \
	ethtool \
	net-tools \
	phosphor-logging-test \
	lmsensors-sensors \
	tcpdump \
	screen \
	"