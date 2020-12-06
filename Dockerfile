FROM node:lts-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm install - g @angular/cli
RUN npm link @angular/cli
COPY . .
