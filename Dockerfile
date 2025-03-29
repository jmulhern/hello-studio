FROM node:20-alpine AS builder
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install && yarn install

# Build the application
COPY . .
RUN npm run build

# Serve with a lightweight static server
FROM node:20-alpine
WORKDIR /app
COPY --from=builder /app/dist /usr/share/static
RUN npm install -g http-server

EXPOSE 3000
CMD ["http-server", "/usr/share/static", "-p", "3000"]