FROM n8nio/n8n:latest

USER root

# Install ffmpeg, curl, bash, and Python3
RUN apk add --no-cache ffmpeg curl bash python3 py3-pip \
    && curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp \
    && chmod +x /usr/local/bin/yt-dlp

USER node

EXPOSE 5678
