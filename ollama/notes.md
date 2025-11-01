## possible solutions

```
#!/bin/bash
# Pull the desired model
ollama pull gemma3:1b
# Start the ollama server (the original entrypoint command)
exec ollama serve
```

Dockerfile
```
FROM ollama/ollama

EXPOSE 11434
ENV OLLAMA_HOST=0.0.0.0:11434

# Copy the script into the container
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Make the script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the new entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
```

old way

CMD ["ollama", "serve"]
