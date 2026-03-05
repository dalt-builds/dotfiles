#!/usr/bin/env bash
# Terminar instancias de polybar activas
killall -q polybar
# Esperar a que los procesos terminen
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Lanzar la barra
polybar mibarra 2>&1 | tee -a /tmp/polybar.log & disown
