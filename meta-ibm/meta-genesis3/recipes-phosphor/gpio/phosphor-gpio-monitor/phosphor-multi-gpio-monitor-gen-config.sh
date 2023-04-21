#!/bin/bash

TMPL='{
  \"Name\": \"${LINE}\",
  \"LineName\": \"${LINE}\",
  \"EventMon\": \"BOTH\",
  \"Targets\": {
    \"FALLING\": [\"dbus-object-present@system-chassis-motherboard-dimm_${i}:Present.service\"],
    \"RISING\": [\"dbus-object-present@system-chassis-motherboard-dimm_${i}:Removed.service\"]
    },
  \"Continue\": true
}'
CFG_FILE=/usr/share/phosphor-gpio-monitor/phosphor-multi-gpio-monitor.json

echo "[" > ${CFG_FILE}

for i in a0 a1 b0 b1 c0 c1 d0 d1 e0 e1 f0 f1 g0 g1 h0 h1 j0 j1 k0 k1 l0 l1 m0 m1 n0 n1 p0 p1 q0 q1 r0 r1 s0 s1 t0 t1 u0 u1 v0 v1 w0 w1 x0 x1 y0 y1 z0 z1
do
LINE=$(echo "PLUG_DETECT_DIMM_$i"|tr '[:lower:]' '[:upper:]')
if [ "$(gpioget $(gpiofind "${LINE}") 2>/dev/null||echo 1)" -eq 0 ]; then
  systemctl start --no-block "dbus-object-present@system-chassis-motherboard-dimm_${i}:Present.service"
else
  systemctl start --no-block "dbus-object-present@system-chassis-motherboard-dimm_${i}:Removed.service"
fi
eval echo ${TMPL} | tr -d '\n' >> ${CFG_FILE};
done

echo "" >> ${CFG_FILE}
echo "]" >> ${CFG_FILE}

sed -i "s/}{/},\n{/g" ${CFG_FILE}
