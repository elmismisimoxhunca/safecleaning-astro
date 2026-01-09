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
EXPOSE 3000

# Start the server
CMD ["http-server", "dist", "-p", "3000", "-c-1"]
