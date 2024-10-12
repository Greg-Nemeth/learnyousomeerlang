FROM erlang:27.1.1.0-alpine
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN apk update && apk add --no-cache \
    zellij \
    helix \
    git \
    wget \
    tar