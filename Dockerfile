# Base n8n image
FROM n8nio/n8n:latest

USER root

# Install ffmpeg and yt-dlp
RUN apt-get update && \
    apt-get install -y ffmpeg curl && \
    curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp && \
    chmod +x /usr/local/bin/yt-dlp

USER node

EXPOSE 5678
