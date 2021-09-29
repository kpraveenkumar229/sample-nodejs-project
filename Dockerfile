FROM node:latest

MAINTAINER Praveen Kumar

RUN echo "Tryin to build my first application"

COPY . /var/www

WORKDIR /var/www

RUN npm install

ENTRYPOINT ["npm","start"]
