FROM node:16.17.0-alpine as node
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
CMD [ "npm", "run", "build"]