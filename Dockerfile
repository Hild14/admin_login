# Sử dụng môi trường Node.js Alpine nhẹ
FROM node:18-alpine

# Tạo thư mục làm việc trong container
WORKDIR /app

# Copy các file quản lý thư viện
COPY package*.json ./

# Cài đặt thư viện
RUN npm install

# Copy toàn bộ source code vào container
COPY . .

# Khai báo cổng 3000
EXPOSE 3000

# Lệnh chạy ứng dụng khi container khởi động
CMD ["node", "server.js"]