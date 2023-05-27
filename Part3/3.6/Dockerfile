FROM node:16

RUN useradd -m myuser

WORKDIR /home/myuser/app

COPY package*.json ./

RUN chown -R myuser:myuser /home/myuser/app && \
    su myuser -c "npm install"

COPY . .
RUN chown -R myuser:myuser /home/myuser/app && \
    su myuser -c "npm run build"

USER root
RUN npm install -g serve

USER myuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]