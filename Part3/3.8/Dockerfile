FROM node:16-alpine AS build-stage

WORKDIR /app

COPY package*.json ./

RUN npm ci && \
    npm cache clean --force

COPY . .

RUN npm run build

FROM node:16-alpine

WORKDIR /app

RUN npm install -g serve && \
    adduser -D myuser

COPY --from=build-stage --chown=myuser:myuser /app/build ./build

USER myuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]