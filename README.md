# alertmanager

just to add custom template to avoid overwrite when deploy in nomad

how to run manually

docker run --rm -e MST_TEAMS_WEBHOOK_URL="<https://prod-255.westeurope.logic.azure.com:443/workflows/........." -e TELEGRAM_CHAT_ID=-1234567890 -e TELEGRAM_BOT_TOKEN="yyyyy:xxxxxxx" -p 9093:9093 alertmanager-custom --config.file=/etc/alertmanager/alertmanager.yml

docker run --rm -it --entrypoint /bin/sh alertmanager-custom