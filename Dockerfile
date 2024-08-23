FROM node:20

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY .env app/.env

COPY . .

RUN npm run build

# EXPOSE 3005

CMD [ "npm", "run", "start:dev" ]
