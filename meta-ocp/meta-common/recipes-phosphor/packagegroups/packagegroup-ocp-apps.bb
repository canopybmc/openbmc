SUMMARY = "OpenBMC for OCP Applications"
PR = "r1"

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
        ${PN}-chassis \
        ${PN}-fans \
        ${PN}-flash \
        ${PN}-system \
        "

PROVIDES += "virtual/obmc-chassis-mgmt"
PROVIDES += "virtual/obmc-fan-mgmt"
PROVIDES += "virtual/obmc-flash-mgmt"
PROVIDES += "virtual/obmc-system-mgmt"

RPROVIDES:${PN}-chassis += "virtual-obmc-chassis-mgmt"
RPROVIDES:${PN}-fans += "virtual-obmc-fan-mgmt"
RPROVIDES:${PN}-flash += "virtual-obmc-flash-mgmt"
RPROVIDES:${PN}-system += "virtual-obmc-system-mgmt"

SUMMARY:${PN}-chassis = "OCP Chassis"
RDEPENDS:${PN}-chassis = " \
        x86-power-control \
        "

SUMMARY:${PN}-fans = "OCP Fans"
RDEPENDS:${PN}-fans = " \
        phosphor-pid-control \
        "

SUMMARY:${PN}-flash = "OCP Flash"
RDEPENDS:${PN}-flash = " \
        phosphor-software-manager \
        "

SUMMARY:${PN}-system = "OCP System"
RDEPENDS:${PN}-system = " \
        dbus-sensors \
        flashrom \
        ipmitool \
        phosphor-host-postd \
        phosphor-hostlogger \
        phosphor-ipmi-ipmb \
        phosphor-post-code-manager \
        phosphor-sel-logger \
        "
