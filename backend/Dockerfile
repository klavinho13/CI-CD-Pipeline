# Stage 1: Build stage
FROM node:20-alpine AS builder

WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install --production

# Copy application source
COPY . .

# Stage 2: Runtime stage
FROM node:20-alpine

WORKDIR /app
COPY --from=builder /app .

EXPOSE 3000

CMD ["node", "server.js"]
