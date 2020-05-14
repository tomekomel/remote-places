FROM node:11.11.0

LABEL "maintainer"="tomekomel@gmail.com"
LABEL "rating"="Five Stars" "class"="First Class"

USER root

ENV AP /home/node/app
ENV PROJECTNAME 'Remote places'

RUN mkdir -p $AP/node_modules && chown -R node:node $AP

WORKDIR $AP

COPY package*.json ./

RUN yarn create strapi-app $PROJECTNAME --quickstart

CMD ["strapi", "develop"]
