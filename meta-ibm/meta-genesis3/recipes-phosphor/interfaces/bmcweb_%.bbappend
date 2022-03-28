
# DANGER. DO NOT USE IN PRODUCTION. SEE https://gerrit.openbmc-project.xyz/c/openbmc/bmcweb/+/29344

EXTRA_OEMESON:append:genesis3 = " \
    -Drest=enabled \
    -Dhttp-body-limit=40 \
    "

