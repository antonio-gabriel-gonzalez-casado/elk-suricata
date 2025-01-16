FROM ghcr.io/digininja/dvwa:latest

# Instalamos las utilidades de red más comunes
RUN apt-get update 

RUN apt-get install -y --no-install-recommends \
    net-tools \
    iproute2 \
    tcpdump \
    telnet \
    iptables \
    supervisor

RUN apt-get install -y suricata jq

RUN rm -rf /var/lib/apt/lists/*

COPY suricata/config/suricata.yaml /etc/suricata/suricata.yaml
COPY suricata/rules/custom.rules /etc/suricata/rules

RUN suricata-update
RUN suricata-update enable-source et/open
RUN suricata-update

# Copiar configuración de supervisord
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Cambiar permisos del script de entrada
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Definir supervisord como entrypoint
ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]


