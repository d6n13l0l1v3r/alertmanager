# Use the official Alertmanager image as the base image
FROM prom/alertmanager:latest

# Set the working directory for Alertmanager templates
RUN mkdir -p /alertmanager/templates

# Copy the custom alert template into the container
COPY templates/alert_template.tmpl /alertmanager/templates/alert_template.tmpl

# Copy the Alertmanager configuration file into the container
#COPY alertmanager.yml /etc/alertmanager/alertmanager.yml

# Expose the necessary port for Alertmanager (default 9093)
EXPOSE 9093

# Command to run Alertmanager,
CMD ["/bin/alertmanager"]

