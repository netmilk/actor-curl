FROM node:alpine

RUN apk --no-cache add curl bash git
RUN git clone https://github.com/netmilk/apify-cli.git
WORKDIR apify-cli
RUN npm install corepack
RUN corepack enable
RUN yarn install
ENV PATH="${PATH}:/apify-cli/node_modules/.bin"
WORKDIR /
COPY .actor .actor
COPY ./bin ./bin

CMD ./bin/start.sh
