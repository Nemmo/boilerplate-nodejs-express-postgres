FROM node:10.15-slim

WORKDIR /app

ADD package.json yarn.lock /app/

RUN yarn install --frozen-lockfile

EXPOSE 3000

CMD ['yarn', 'start']
