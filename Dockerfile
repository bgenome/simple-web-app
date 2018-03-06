FROM node:8

WORKDIR /usr/src/app

RUN npm install cody

COPY . .

EXPOSE 3001

CMD [ "node", "testapp1.js" ]
