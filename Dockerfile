FROM node:14.15.0

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci --only=production
RUN npm install nodemon -g

COPY . .

EXPOSE 8080

CMD [ "npm", "run", "start"]
