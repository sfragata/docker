FROM alpine:3.14.0

LABEL maintainer="Silvio Fragata"

RUN apk --update add --no-cache jq

RUN adduser -S jq-user

USER jq-user

ENTRYPOINT ["jq"]

CMD []