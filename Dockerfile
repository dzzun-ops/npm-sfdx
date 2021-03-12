FROM node:14.16.0

RUN apt-get update && apt-get -y upgrade
RUN npm install --global lodash@4.17.15
RUN npm install --global sfdx-cli
RUN sfdx update
RUN npm uninstall lodash --silent
RUN sfdx plugins --core
RUN node -v
RUN npm -v
