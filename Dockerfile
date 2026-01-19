# 1. Base Image - Tentukan "dapur" atau OS asas
FROM node:18-alpine

# 2. Working Directory - Tentukan folder di dalam container untuk aplikasi kita
WORKDIR /app

# 3. Copy Dependencies - Ambil senarai library yang diperlukan
COPY package*.json ./

# 4. Install - Pasang semua library tersebut
RUN npm install

# 5. Copy Source Code - Masukkan semua kod aplikasi ke dalam container
COPY . .

# 6. Port - Beritahu container port mana yang akan digunakan
EXPOSE 3000

# 7. Start - Arahan terakhir untuk jalankan aplikasi
CMD ["npm", "start"]