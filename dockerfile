FROM node:22-alpine

WORKDIR /user/src/app

COPY package*.json ./

Run npm install

COPY . .

EXPOSE 3000

CMD ["node","dist/app.js"]