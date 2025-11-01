#!/bin/bash
# prompt stream false

curl http://localhost:11434/api/generate -d '{
  "model": "gemma3:1b",
  "prompt": "Why is the sky blue?",
  "stream": false
}'