# autollama

"Docker compose: how to pull model automatically with container creation?"

autollama solves the problem of downloading an Ollama model automatically. It works by running `docker compose exec` after the docker conpose file executes.

Update the volume path to `autollama` in the docker-compose.yml file. 

```yaml
    volumes:
      - type: bind
        source: </path/to/autollama>
        target: /root/.ollama
        bind:
          create_host_path: true
```

Then run:

```bash
./start.sh
```