FROM node:alpine as node

WORKDIR /angular-src
COPY ./angular-src/src ./src
COPY ./angular-src/package.json package.json
COPY ./angular-src/angular.json angular.json
COPY ./angular-src/src  
COPY ./angular-src/src
COPY ./angular-src/src

FROM nginx:alpine