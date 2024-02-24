FROM alpine:latest

ENV URL= \
    MODE= \
    HOST= \
    SECRET=

COPY ./dyndns.sh /dyndns.sh

RUN apk add bash

ENTRYPOINT [ "/dyndns.sh", "-m", "${MODE}", "-u", "${URL}", "-h", "${HOST}", "-s", "${SECRET}}" ]
