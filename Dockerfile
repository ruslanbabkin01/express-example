FROM node

# создание директории приложения
WORKDIR /app

# установка зависимостей
# символ астериск ("*") используется для того чтобы по возможности
# скопировать оба файла: package.json и package-lock.json
COPY package*.json /app

RUN npm install
# Если вы создаете сборку для продакшн
# RUN npm ci --omit=dev

# копируем исходный код
COPY . .

ENV PORT 4200

# set port
EXPOSE $PORT

CMD ["node", "server.js"]