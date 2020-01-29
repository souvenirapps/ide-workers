FROM alpine:3.10

RUN apk add --no-cache bash python3

COPY compile.sh /bin/compile.sh

COPY run.sh /bin/run.sh

RUN chmod 755 /bin/compile.sh

RUN chmod 755 /bin/run.sh
