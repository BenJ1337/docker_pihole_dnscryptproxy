# Pi-hole with DNS-Crypt-Proxy

## Setup

- Create a file which contains the password for the web-admin-interface: `./pi-hole-webpw.secret`
- You may change the IP address for `HOST_IP` in `.env`, which specifies the source from which DNS requests should be served

## Start

```
docker-compose up -d
```

## Releases

- [docker-pi-hole](https://github.com/pi-hole/docker-pi-hole/releases)
- [cloudflared](https://github.com/cloudflare/cloudflared/releases)


## Quad9 Resolvers

https://raw.githubusercontent.com/Quad9DNS/dnscrypt-settings/main/dnscrypt/quad9-resolvers.md
