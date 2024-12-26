# alertmanager

just to add custom template to avoid overwrite when deploy in nomad

how to run manually

docker run --rm -e MST_TEAMS_WEBHOOK_URL="<https://prod-255.westeurope.logic.azure.com:443/workflows/........." -e TELEGRAM_CHAT_ID=-1234567890 -e TELEGRAM_BOT_TOKEN="yyyyy:xxxxxxx" -p 9093:9093 alertmanager-custom --config.file=/etc/alertmanager/alertmanager.yml

docker run --rm -it --entrypoint /bin/sh alertmanager-custom



curl -X POST <http://127.0.0.1:9093/api/v2/alerts> \
  -H "Content-Type: application/json" \
  -d '[
        {
          "labels": {
            "alertname": "TestAlert0",
            "severity": "critical",
            "service": "haproxy",
            "host": "xxxx.xxxx.com"
          },
          "annotations": {
            "summary": "User r4coxxxxxx or IP 1xxxxx has exceeded the rate limit",
            "description": "Test alert triggered with custom format notification and reference link to alertmanager dashboard"
          }
        }
      ]'
