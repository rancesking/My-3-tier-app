FROM node:14-slim
WORKDIR /usr/src/api
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm", "run", "start"]