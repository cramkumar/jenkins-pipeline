FROM node:12.10-alpine
RUN mkdir -p /app
WORKDIR /app
COPY api/package.json /app
COPY api/index.js /app 
RUN apk update && apk add --update curl nodejs npm docker openrc
RUN npm install
RUN npm install express --save
EXPOSE 3000
CMD npm start
