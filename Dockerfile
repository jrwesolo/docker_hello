FROM         progrium/busybox
MAINTAINER   Jordan Wesolowski <jrwesolo@gmail.com>

RUN opkg-install lighttpd
RUN adduser -D www
COPY lighttpd.conf /etc/
COPY index.html /www/
EXPOSE 80
ENTRYPOINT ["lighttpd", "-D", "-f", "/etc/lighttpd.conf"]
