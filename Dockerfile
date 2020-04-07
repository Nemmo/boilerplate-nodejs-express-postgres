FROM node:10.15-slim

WORKDIR /app

ADD package.json yarn.lock /app/

RUN yarn install --production --frozen-lockfile && rm yarn.lock

ADD . /app

EXPOSE 8080

CMD yarn start
