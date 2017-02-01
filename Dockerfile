FROM node

MAINTAINER mkerker

# RUN npm update && npm install -g gulp

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY https://github.com/MattSurabian/DuckHunt-JS/package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080
CMD [ "gulp", "serve" ]

