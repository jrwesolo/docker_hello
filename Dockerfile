FROM       gliderlabs/alpine
MAINTAINER Jordan Wesolowski <jrwesolo@gmail.com>

# install lighttpd
RUN apk update && \
    apk add lighttpd && \
    rm -rf /var/cache/apk
# lighttpd configuration
RUN adduser -D www
COPY lighttpd.conf /etc/
EXPOSE 80

COPY run /
ENTRYPOINT ["/run"]
