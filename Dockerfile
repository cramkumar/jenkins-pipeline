FROM node:12.10-alpine
WORKDIR /app
RUN apk update && apk add --update curl nodejs npm docker openrc
#RUN rc-update add docker boot
