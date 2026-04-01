FROM ghcr.io/micromdm/nanomdm:latest

RUN apk add --no-cache openssl && \
    mkdir -p /certs && \
        openssl req -x509 -newkey rsa:2048 -keyout /certs/ca.key -out /certs/ca.pem -days 3650 -nodes -subj "/CN=DomNode MDM CA"

        EXPOSE 9000

        CMD ["-listen", ":9000", "-api", "DomNodeAPI2026", "-ca", "/certs/ca.pem"]
