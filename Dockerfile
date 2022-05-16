FROM alpine:edge
MAINTAINER mailsvb <mailsvb@gmail.com>

RUN apk update && apk upgrade && apk add --no-cache rtpproxy

CMD /usr/bin/rtpproxy -u rtpproxy:rtpproxy -f -s udp:127.0.0.1:22222 -m 49000 -M 49999
