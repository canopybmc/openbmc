SUMMARY = "OpenBMC for IBM - Applications"
PR = "r1"

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
	${PN}-chassis \
	${PN}-flash \
	${PN}-fans \
	${PN}-system \
	"

PROVIDES += "virtual/obmc-chassis-mgmt"
PROVIDES += "virtual/obmc-flash-mgmt"
PROVIDES += "virtual/obmc-fan-mgmt"
PROVIDES += "virtual/obmc-system-mgmt"

RPROVIDES:${PN}-chassis += "virtual-obmc-chassis-mgmt"
RPROVIDES:${PN}-flash += "virtual-obmc-flash-mgmt"
RPROVIDES:${PN}-fans += "virtual-obmc-fan-mgmt"
RPROVIDES:${PN}-system += "virtual-obmc-system-mgmt"

SUMMARY:${PN}-chassis = "IBM Chassis"
RDEPENDS:${PN}-chassis = " \
	phosphor-post-code-manager \
	phosphor-host-postd \
	phosphor-state-manager-chassis \
	"

SUMMARY:${PN}-flash = "IBM Flash"
RDEPENDS:${PN}-flash = " \
	phosphor-software-manager \
	obmc-control-bmc \
	phosphor-ipmi-flash \
	"

SUMMARY:${PN}-fans = "IBM Fans"
RDEPENDS:${PN}-fans = " \
	phosphor-pid-control \
"

SUMMARY:${PN}-system = "IBM System"
RDEPENDS:${PN}-system = " \
	bmcweb \
	entity-manager \
	webui-vue \
	phosphor-ipmi-kcs \
	phosphor-post-code-manager \
	strace \
	ldd \
	ethtool \
	net-tools \
	phosphor-logging-test \
	lmsensors-sensors \
	tcpdump \
	screen \
	gdb \
	aspeedtech-tools \
	phosphor-ipmi-ipmb \
	ipmitool \
	"
