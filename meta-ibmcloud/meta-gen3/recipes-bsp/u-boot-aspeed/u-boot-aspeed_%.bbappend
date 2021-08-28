FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Add u-boot-aspeed patches here
SRC_URI_append = " \
                file://0001-route-uart5-to-io1.patch \
       "