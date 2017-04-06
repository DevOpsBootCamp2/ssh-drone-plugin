FROM alpine

RUN apk update && \
  apk add \
    ca-certificates \
    openssh-client && \
  rm -rf /var/cache/apk/*

ADD run-ssh /bin/

ENTRYPOINT ["/bin/run-ssh"]
