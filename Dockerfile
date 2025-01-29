FROM node:alpine as node

WORKDIR /angular-src
COPY ./angular-src/src ./src
COPY ./angular-src/package.json package.json
COPY ./angular-src/angular.json angular.json
COPY ./angular-src/tsconfig.app.json tsconfig.app.json  
COPY ./angular-src/tsconfig.json tsconfig.json
COPY ./angular-src/tsconfig.spec.json tsconfig.spec.json

RUN npm i -g @angular/cli
RUN npm i

CMD [ "ng", "serve", "--host", "0.0.0.0"]