FROM       alpine:3.2
MAINTAINER Jordan Wesolowski <jrwesolo@gmail.com>

# install lighttpd/openssl
RUN apk update && \
    apk add lighttpd openssl && \
    rm -rf /var/cache/apk/*

# lighttpd configuration
RUN adduser -D www
COPY lighttpd.conf /etc/
EXPOSE 80 443

COPY run /
ENTRYPOINT ["/run"]
