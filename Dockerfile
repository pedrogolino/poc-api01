FROM node:14.16.1-alpine AS base_api01
RUN apk add bash

FROM base_api01
EXPOSE 3000
WORKDIR /app
COPY /api .
RUN npm i -g @nestjs/cli rimraf
RUN npm install && npm run build
ENTRYPOINT [ "npm", "run" ]