FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

# Add u-boot-aspeed patches here
SRC_URI:append = " \
                 file://0001-HACK-ast_g5-Route-uart-to-uart1.patch \
                 file://0002-arm-mach-aspeed-Add-spansion-S25FL256L.patch \
       "
