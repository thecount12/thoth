#!/bin/bash
set -ex
# script to persist data and run docker
docker run -d -p 11434:11434 -v "$(PWD)"/ollama_data:/root/.ollama -it ollama-image
echo "docker exec -it hash ollama pull gemma3:1b"
