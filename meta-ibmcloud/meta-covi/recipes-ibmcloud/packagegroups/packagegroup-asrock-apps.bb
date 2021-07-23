SUMMARY = "OpenBMC for IBM Cloud - Applications"
PR = "r1"

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
	${PN}-flash \
	${PN}-system \
	"

PROVIDES += "virtual/obmc-flash-mgmt"
PROVIDES += "virtual/obmc-system-mgmt"

RPROVIDES_${PN}-flash += "virtual-obmc-flash-mgmt"
RPROVIDES_${PN}-system += "virtual-obmc-system-mgmt"

SUMMARY_${PN}-flash = "IBM Cloud Flash"
RDEPENDS_${PN}-flash = " \
	obmc-control-bmc \
	phosphor-ipmi-flash \
	"

SUMMARY_${PN}-system = "IBM Cloud System"
RDEPENDS_${PN}-system = " \
	bmcweb \
	entity-manager \
	dbus-sensors \
	webui-vue \
	phosphor-host-postd \
	phosphor-ipmi-kcs \
	phosphor-post-code-manager \
	"
