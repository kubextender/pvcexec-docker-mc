FROM alpine:3.6

RUN apk update && apk add mc

CMD mc