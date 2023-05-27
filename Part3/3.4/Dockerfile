FROM docker:stable

RUN apk add --no-cache git

COPY script.sh /script.sh

RUN chmod +x /script.sh

ENTRYPOINT ["/script.sh"]