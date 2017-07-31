ARG  BASE_VERSION=latest
FROM alpine:${BASE_VERSION}

RUN apk update && apk add htop
RUN adduser -D -u 1555 htop

USER 1555
WORKDIR /home/htop
CMD ["htop"]

