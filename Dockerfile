from alpine:3.10

run apk update && \
    apk add --no-cache curl jq

copy entrypoint.sh /entrypoint.sh

run chmod +x /entrypoint.sh

entrypoint ["/entrypoint.sh"]