FROM node:9.6.1

MAINTAINER Lowly2005

RUN yarn install --silent

CMD ["yarn", "start"]