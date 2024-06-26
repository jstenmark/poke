FROM node:latest

WORKDIR /usr/src/app

COPY . ./

RUN npm install
RUN npm run build
EXPOSE 3000

CMD ["node", "build/src/server.js"]
