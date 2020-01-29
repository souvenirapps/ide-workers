FROM alpine:3.7

RUN apk add --no-cache bash --repository http://dl-cdn.alpinelinux.org/alpine/v3.7/main/ nodejs=8.9.3-r1

COPY compile.sh /bin/compile.sh

COPY run.sh /bin/run.sh

RUN chmod 755 /bin/compile.sh

RUN chmod 755 /bin/run.sh
