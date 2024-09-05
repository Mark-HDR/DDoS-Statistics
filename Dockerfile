# Gunakan image Node.js versi 16 sebagai base image
FROM node:16

# Buat direktori kerja di dalam container
WORKDIR /usr/src/app

# Salin file package.json dan package-lock.json ke direktori kerja
COPY package*.json ./

# Install dependensi aplikasi
RUN npm install

# Salin semua file dari direktori proyek ke direktori kerja
COPY . .

# Expose port 8080 untuk akses dari luar container
EXPOSE 8080

# Jalankan aplikasi dengan perintah npm start
CMD ["npm", "start"]
