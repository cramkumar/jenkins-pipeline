FROM alpine
RUN apk update && apk add --update alpine-sdk curl nodejs npm
