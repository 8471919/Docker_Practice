# syntax=docker/dockerfile:1

FROM node:16-alpine
ENV NODE_ENV=production
WORKDIR /app

COPY . .

WORKDIR /app/server

RUN npm install

RUN npm run build

CMD ["npm", "run", "start:prod"]



