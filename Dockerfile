# Menggunakan image node
FROM node:14-alpine

# Menentukan direktori yang akan digunakan dan membuat folder app
WORKDIR /app

# Menyalin isi dari direktori lokal ke direktori image pada folder app
COPY . .

# Menentukan environment untuk digunakan
ENV NODE_ENV=production DB_HOST=item-db

# Menjalankan perintah untuk membuat paket 
RUN npm install --production --unsafe-perm && npm run build

# Menentukan port yang akan digunakan
EXPOSE 8080

# Menjalankan perintah untuk menjalankan aplikasi
CMD ["npm", "start"]