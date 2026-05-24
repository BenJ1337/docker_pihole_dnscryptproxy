FROM alpine:3.22

ARG DNSCRYPT_VER

RUN apk add --no-cache ca-certificates curl tar \
 && curl -fsSL "https://github.com/DNSCrypt/dnscrypt-proxy/releases/download/$DNSCRYPT_VER/dnscrypt-proxy-linux_arm64-$DNSCRYPT_VER.tar.gz" -o /tmp/dnscrypt.tar.gz \
 && mkdir -p /usr/local/bin/dnscrypt-proxy \
 && tar -xzf /tmp/dnscrypt.tar.gz -C /usr/local/bin/dnscrypt-proxy \
 && chmod +x /usr/local/bin/dnscrypt-proxy \
 && rm -rf /tmp/*
