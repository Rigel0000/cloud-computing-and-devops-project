# Base image
FROM node:14

# Uygulama dizini oluşturun ve çalışma dizini olarak ayarlayın
WORKDIR /usr/src/app

# Bağımlılıkları yükle
COPY package*.json ./
RUN npm install

# Uygulama kaynaklarını kopyala
COPY . .

# Uygulamayı çalıştır
CMD ["npm", "start"]
