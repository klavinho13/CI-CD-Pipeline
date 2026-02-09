# ---------- Stage 1: Build stage ----------
FROM alpine:3.19 AS builder

WORKDIR /app

# Copy frontend files
COPY index.html .

# ---------- Stage 2: Runtime stage ----------
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy files from builder stage
COPY --from=builder /app/index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
