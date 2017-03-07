FROM alpine:3.5

ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8

RUN  apk add -U python py-pip curl ca-certificates openssl && \
     pip install --no-cache-dir awscli && \
     rm -rf /var/cache/apk/*

CMD ["/bin/sh", "-li"]
