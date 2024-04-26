FROM node:12-alpine

WORKDIR /usr/src/app

COPY package.json .

RUN npm install --quiet

COPY . .

RUN npm install typescript@3.8.3 @types/babel__core@7.1.18 @types/babel__traverse@7.14.2 @babel/types@7.12.12

CMD ["npm", "run", "start"]
