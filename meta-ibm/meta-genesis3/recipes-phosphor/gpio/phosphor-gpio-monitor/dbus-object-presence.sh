#!/bin/bash
INTERFACE_NAME="xyz.openbmc_project.Inventory.Item"
SERVICE_NAME="xyz.openbmc_project.Inventory.Manager"
PREFIX="/xyz/openbmc_project/inventory/"
DBUSPATH=""

if [[ "$1" == *:Present ]]; then
  DBUSPATH="${PREFIX}${1%:Present}"
  STATE="true"
fi
if [[ "$1" == *:Removed ]]; then
  DBUSPATH="${PREFIX}${1%:Removed}"
  STATE="false"
fi
if [ "$DBUSPATH" != "" ]; then
  mapper wait "$DBUSPATH"
  busctl set-property $SERVICE_NAME "$DBUSPATH" $INTERFACE_NAME Present b $STATE
fi