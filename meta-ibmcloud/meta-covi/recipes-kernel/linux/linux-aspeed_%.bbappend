FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

KBRANCH = "dev-5.10"
LINUX_VERSION = "5.10.53"

SRCREV = "1519240139a91e3dbc97d8f79de29a22a3328257"

KSRC = "git://github.com/9elements/linux;protocol=git;branch=${KBRANCH}"

# Add patch files here
SRC_URI += " \
        file://0001-ibm-covi-Copy-ast-evb-dts.patch \
       "