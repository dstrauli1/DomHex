FROM ghcr.io/micromdm/nanomdm:latest

EXPOSE 9000

ENTRYPOINT ["nanomdm"]
CMD ["-listen", ":9000", "-api", "DomNodeAPI2026"]
