FROM alpine:latest

ENV URL= \
    MODE= \
    HOST= \
    SECRET=

COPY ./dyndns.sh /dyndns.sh

RUN apk add bash curl; chmod +x /dyndns.sh

ENTRYPOINT [ "/bin/bash", "-c", "/dyndns.sh -m ${MODE} -u ${URL} -h ${HOST} -s ${SECRET} " ]
