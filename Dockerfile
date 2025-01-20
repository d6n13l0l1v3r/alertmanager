FROM prom/alertmanager:latest

USER root

# Install tzdata to manage time zone
RUN apk add --no-cache tzdata

# Set the time zone to Europe/Madrid (or any other time zone)
ENV TZ=Europe/UTC

# Crear directorios necesarios
RUN mkdir -p /usr/local/bin/ /etc/alertmanager/templates

# Copiar archivos
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY templates/alert_template.tmpl /etc/alertmanager/templates/alert.tmpl
COPY config/alertmanager.yml /etc/alertmanager/alertmanager.yml
# Cambiar permisos
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
