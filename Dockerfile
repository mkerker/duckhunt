FROM node
MAINTAINER mkerker
RUN npm update && npm install -g gulp

RUN mkdir /var/www

ADD app.js /var/www/app.js
RUN cd /var/www ; npm install 
