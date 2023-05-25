FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .
# 2.9 - changed URL from http://localhost:8080 to /api
ENV REACT_APP_BACKEND_URL=/api

RUN npm run build

RUN npm install -g serve

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
