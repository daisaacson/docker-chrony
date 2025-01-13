FROM alpine:3.21.2
RUN apk --no-cache update && apk --no-cache upgrade && apk add --no-cache bash execline chrony
COPY docker-entrypoint.sh /usr/local/bin
EXPOSE 123/udp
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["chronyd", "-f", "/etc/chrony/chrony.conf", "-d", "-u", "chrony", "-x"]
