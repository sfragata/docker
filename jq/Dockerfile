FROM alpine:3.15.0

LABEL maintainer="sfragata@gmail.com"
LABEL name="Silvio Fragata"
LABEL url="github.com/sfragata"


RUN apk --update add --no-cache jq

RUN adduser -S jq-user

USER jq-user

ENTRYPOINT ["jq"]

CMD []