FROM alpine
RUN apk update && apk add --update alpine-sdk curl nodejs npm docker openrc
RUN rc-update add docker boot
