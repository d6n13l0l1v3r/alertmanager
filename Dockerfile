FROM prom/alertmanager:latest

USER root

# Crear directorios necesarios
RUN mkdir -p /usr/local/bin/ /etc/alertmanager/templates

# Copiar archivos
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY templates/alert_template.tmpl /etc/alertmanager/templates/alert.tmpl
COPY config/alertmanager.yml /etc/alertmanager/alertmanager.yml
# Cambiar permisos
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
