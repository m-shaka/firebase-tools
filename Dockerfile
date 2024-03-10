FROM node:20-alpine

WORKDIR /app
ENV PUPPETEER_SKIP_DOWNLOAD '1'

ADD . .
RUN npm i
RUN npm link

ENTRYPOINT ["firebase"]

