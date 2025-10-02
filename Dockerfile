# Base n8n image (Alpine)
FROM n8nio/n8n:latest

USER root

# Install ffmpeg and curl using Alpine package manager
RUN apk add --no-cache ffmpeg curl bash \
    && curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp \
    && chmod +x /usr/local/bin/yt-dlp

USER node

EXPOSE 5678
