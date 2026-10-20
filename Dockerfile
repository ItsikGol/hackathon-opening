# A static file server for the hackathon opening video. Railway sets PORT.
FROM caddy:2-alpine
COPY index.html /srv/
COPY audio /srv/audio
COPY brand /srv/brand
CMD caddy file-server --root /srv --listen :${PORT:-8080}