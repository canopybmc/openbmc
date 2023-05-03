#!/bin/bash

TMPL='{
  \"Name\": \"${LINE}\",
  \"LineName\": \"${LINE}\",
  \"EventMon\": \"BOTH\",
  \"Targets\": {
    \"FALLING\": [\"dbus-object-present@${ITEM}.service\"],
    \"RISING\": [\"dbus-object-remove@${ITEM}.service\"]
    },
  \"Continue\": true
}'

CFG_FILE=/usr/share/phosphor-gpio-monitor/phosphor-multi-gpio-monitor.json
UNITS_TO_START=""

function process_gpio() {
  LINE=$1
  ITEM=$2
  BIAS=$3
  if [ "$(gpioget -B ${BIAS} $(gpiofind "${LINE}") 2>/dev/null||echo 1)" -eq 0 ]; then
    UNITS_TO_START+="dbus-object-present@${ITEM}.service "
  else
    UNITS_TO_START+="dbus-object-remove@${ITEM}.service "
  fi
  eval echo ${TMPL} | tr -d '\n' >> ${CFG_FILE};
}

echo "[" > ${CFG_FILE}
for i in {0..3}
do
  for j in a1 a2 b1 b2 c1 c2 d1 d2 e1 e2 f1 f2 g1 g2 h1 h2
  do
    process_gpio "PLUG_DETECT_DIMM_C${i^^}${j^^}" "system-chassis-motherboard-dimm_c${i}${j}" "pull-up"
  done
done

for i in {1..9}
do
  process_gpio "RSSD0${i}_PRESENT_N" "system-chassis-motherboard-rssd0${i}" "pull-up"
done

for i in {10..32}
do
  process_gpio "RSSD${i}_PRESENT_N" "system-chassis-motherboard-rssd${i}" "pull-up"
done

for i in {0..3}
do
  process_gpio "FM_CPU${i}_SKTOCC_N" "system-chassis-motherboard-cpu${i}" "disable"
done

echo "" >> ${CFG_FILE}
echo "]" >> ${CFG_FILE}

sed -i "s/}{/},\n{/g" ${CFG_FILE}

systemctl --no-block start ${UNITS_TO_START}