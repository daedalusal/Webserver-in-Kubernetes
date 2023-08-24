# syntax=docker/dockerfile:1
   
FROM node:18-alpine
WORKDIR /.
COPY . .
RUN npm init -y && npm install express
CMD ["node", "server.js"]
EXPOSE 3000