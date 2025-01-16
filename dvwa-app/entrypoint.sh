#!/bin/bash

# Ajustar el MTU de la interfaz eth0
#echo "Adjusting MTU for custom_docker0 to 1500"
#ip link set custom_docker0 mtu 1500

# Actualizar reglas de Suricata si está habilitado
#if [ "$SURICATA_UPDATE_ENABLED" = "true" ]; then
#    echo "Updating Suricata rules..."
#    suricata-update
#    suricata-update enable-source et/open
#    suricata-update
#fi


echo "Starting supervisord..."
exec supervisord -c /etc/supervisor/conf.d/supervisord.conf

