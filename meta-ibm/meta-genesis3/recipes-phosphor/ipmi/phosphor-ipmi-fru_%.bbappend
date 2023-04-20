inherit obmc-phosphor-systemd

FILESEXTRAPATHS:prepend:genesis3 := "${THISDIR}/${PN}:"

DEPENDS:append:genesis3 = " genesis3-yaml-config"

EXTRA_OECONF:genesis3 = " \
    YAML_GEN=${STAGING_DIR_HOST}${datadir}/genesis3-yaml-config/ipmi-fru-read.yaml \
    PROP_YAML=${STAGING_DIR_HOST}${datadir}/genesis3-yaml-config/ipmi-extra-properties.yaml \
    "
