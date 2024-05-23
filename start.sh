docker compose up -d
sleep 5
docker compose exec autollama sh /root/.ollama/pull_model.sh
