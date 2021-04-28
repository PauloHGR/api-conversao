FROM node:current-alpine3.13
COPY package*.json ./
RUN npm install
WORKDIR /app
COPY . .
EXPOSE 8080
CMD [ "node", "index.js" ]