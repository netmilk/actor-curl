FROM node:alpine

RUN apk --no-cache add curl bash git
RUN npm install -g git+https://github.com/netmilk/apify-cli.git
COPY .actor .actor
COPY ./bin ./bin

CMD ./bin/start.sh
