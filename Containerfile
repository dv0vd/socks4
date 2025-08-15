FROM docker.io/alpine:3.22.1

RUN apk add --no-cache dante-server
COPY ./dante.conf /app/dante.conf

EXPOSE 1080

ENTRYPOINT ["sockd", "-f", "/app/dante.conf"]