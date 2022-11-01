FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo-containers
ENV MONGODB_CLUSTER_ADDRESS cluster0.inwomz5.mongodb.net
ENV MONGODB_USERNAME peter
ENV MONGODB_PASSWORD Apteka20NJS

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]