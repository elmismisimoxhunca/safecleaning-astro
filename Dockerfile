# Build stage
FROM node:18-alpine AS builder

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Build the project
RUN npm run build

# Production stage
FROM node:18-alpine

WORKDIR /app

# Install a simple HTTP server to serve static files
RUN npm install -g http-server

# Copy built files from builder stage
COPY --from=builder /app/dist ./dist

# Expose port
EXPOSE 80

# Start the server - bind to 0.0.0.0 to accept external connections
CMD ["http-server", "dist", "-p", "80", "-a", "0.0.0.0", "-c-1"]
