#!/bin/bash
# quick test
set -ex
curl http://localhost:11434/api/chat -d '{
  "model": "gemma3:1b",
  "messages": [
    {"role": "user", "content": "Why is the sky blue?"}
  ]
}'
