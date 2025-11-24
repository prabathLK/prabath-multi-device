FROM node:latest

RUN apt-get update && \
    apt-get install -y ffmpeg imagemagick webp git build-essential python3 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package.json .

RUN npm install -g pm2

RUN npm install --legacy-peer-deps

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
