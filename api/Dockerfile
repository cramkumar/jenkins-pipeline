FROM node:12.10-alpine
WORKDIR /app
COPY package.json ./
RUN apk update && apk add --update curl nodejs npm docker openrc
COPY . .
EXPOSE 3000
CMD npm start
