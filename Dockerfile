FROM node:18

WORKDIR /app

COPY . .

EXPOSE 4001

CMD ["node", "app.js"]
