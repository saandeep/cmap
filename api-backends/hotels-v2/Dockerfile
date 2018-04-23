FROM node:6-alpine
COPY index.js /app/
COPY package*.json /app/
ADD api /app/api
ADD controllers /app/controllers
WORKDIR /app/
RUN npm install




CMD ["npm", "start"]