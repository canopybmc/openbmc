FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Add u-boot-aspeed patches here
SRC_URI_append = " \
                 file://0001-HACK-ast_g5-Route-uart-to-uart1.patch \
                 file://0002-arm-mach-aspeed-Add-spansion-S25FL256L.patch \
                 file://0003-board-ast-g5-Enable-the-ethernet-PHY-s.patch \
       "