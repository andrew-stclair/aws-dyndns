FROM alpine:latest

ENV URL= \
    MODE= \
    HOST= \
    SECRET=

COPY ./dyndns.sh /dyndns.sh

RUN apk add bash curl perl-utils; chmod +x /dyndns.sh

ENTRYPOINT [ "/bin/bash", "-c", "curl -s --ipv4 -q -s -X POST -H 'content-type: application/json' -d '{\"execution_mode\":\"get\"}' ${URL} > /dev/null; /dyndns.sh -m ${MODE} -u ${URL} -h ${HOST} -s ${SECRET} " ]
