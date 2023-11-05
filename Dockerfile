FROM node:20-alpine

WORKDIR /usr/src/app

RUN npm prune --production

COPY . .

RUN npm ci

EXPOSE 3000

CMD ["npm", "run", "serve"]
