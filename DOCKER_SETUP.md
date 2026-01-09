# Docker Setup Guide - Safe Cleaning Astro

This guide explains how to run the Safe Cleaning website using Docker.

## Prerequisites

- Docker installed on your system
- Docker Compose installed (usually comes with Docker Desktop)

## Quick Start

### Option 1: Using Docker Compose (Recommended)

1. Navigate to the project directory:
```bash
cd /home/sebastian/CascadeProjects/safecleaning-astro
```

2. Build and run the container:
```bash
docker-compose up --build
```

3. Open your browser and visit:
```
http://localhost:3000
```

4. To stop the container:
```bash
docker-compose down
```

### Option 2: Using Docker CLI

1. Build the Docker image:
```bash
docker build -t safecleaning-astro .
```

2. Run the container:
```bash
docker run -p 3000:3000 --name safecleaning safecleaning-astro
```

3. Open your browser and visit:
```
http://localhost:3000
```

4. To stop the container:
```bash
docker stop safecleaning
docker rm safecleaning
```

## What's Included

- **Multi-stage build**: Optimized Docker image with minimal size
- **Production-ready**: Uses http-server to serve static files
- **Port 3000**: Website accessible at http://localhost:3000
- **Auto-restart**: Container restarts automatically if it crashes

## File Structure

- `Dockerfile` - Docker image configuration
- `docker-compose.yml` - Docker Compose configuration
- `.dockerignore` - Files to exclude from Docker build

## Troubleshooting

### Port already in use
If port 3000 is already in use, modify `docker-compose.yml`:
```yaml
ports:
  - "8080:3000"  # Access at http://localhost:8080
```

### View logs
```bash
docker-compose logs -f safecleaning
```

### Rebuild image
```bash
docker-compose up --build --no-cache
```

## Pages Available

Once running, you can access:
- Home: http://localhost:3000/
- Contact: http://localhost:3000/contacto
- Services: http://localhost:3000/aseo-en-*

All service pages are available with their respective URLs.
