# syntax=docker/dockerfile:1

FROM node:16-alpine
ENV NODE_ENV=production
WORKDIR /app

COPY ["server/package.json", "server/package-lock.json*", "./"]
RUN npm install

COPY . .

CMD ["npm", "start"]



