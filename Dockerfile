FROM node:14.17.5

RUN apt-get update && apt-get -y upgrade
RUN npm install --global lodash@4.17.15
RUN npm install --global sfdx-cli
RUN sfdx plugins:install @salesforce/sfdx-scanner
RUN sfdx update
RUN npm uninstall lodash --silent
RUN sfdx plugins --core
RUN node -v
RUN npm -v
