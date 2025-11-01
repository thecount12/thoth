#!/bin/bash
# script to build
set -ex
echo "build ollma image"
docker buildx build -t ollama-image -f Dockerfile .
echo "build complete"
