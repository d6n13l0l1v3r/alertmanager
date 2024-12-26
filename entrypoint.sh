#!/bin/sh

# Set default values for the variables (optional, in case the environment variables are not set)
MST_TEAMS_WEBHOOK_URL=${MST_TEAMS_WEBHOOK_URL:-"https://default.url/teams"}
TELEGRAM_CHAT_ID=${TELEGRAM_CHAT_ID:-"123456789"}
TELEGRAM_BOT_TOKEN=${TELEGRAM_BOT_TOKEN:-"your_default_token"}

# Use sed to replace the placeholders with the environment variables
sed -i "s|\${MST_TEAMS_WEBHOOK_URL}|${MST_TEAMS_WEBHOOK_URL}|g" /etc/alertmanager/alertmanager.yml
sed -i "s|\${TELEGRAM_CHAT_ID}|${TELEGRAM_CHAT_ID}|g" /etc/alertmanager/alertmanager.yml
sed -i "s|\${TELEGRAM_BOT_TOKEN}|${TELEGRAM_BOT_TOKEN}|g" /etc/alertmanager/alertmanager.yml

# Start alertmanager
exec /bin/alertmanager "$@"