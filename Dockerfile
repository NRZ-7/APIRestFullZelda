FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install --only=production

COPY . .

EXPOSE 3001

CMD ["node", "app.js"]
