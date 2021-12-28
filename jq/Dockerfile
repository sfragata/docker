FROM alpine:3.15.0

LABEL maintainer="Silvio Fragata <sfragata@gmail.com>"
LABEL url="github.com/sfragata/docker"


RUN apk --update add --no-cache jq

RUN adduser -S jq-user

USER jq-user

ENTRYPOINT ["jq"]

CMD []