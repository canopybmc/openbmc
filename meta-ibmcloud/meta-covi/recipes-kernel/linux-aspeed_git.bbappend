FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Add patch files here
SRC_URI += " \
        file://0001-ibm-covi-Copy-ast-evb-dts.patch \
       "