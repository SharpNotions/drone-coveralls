FROM node:8-alpine
LABEL maintainer="Sharp Notions,LLC <contact@sharpnotions.com>"
RUN apk upgrade --no-cache && apk add --no-cache bash

ENV ROOT /usr/src/app
WORKDIR ${ROOT}

RUN npm install coveralls

ADD ./entrypoint.sh .
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]