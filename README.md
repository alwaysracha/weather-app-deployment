# Weather App - Deployment Configuration

This repository contains the Docker Compose configuration for deploying the Weather App on QNAP NAS.

## Architecture
- **API**: alwaysracha/weather-api (1 instance)
- **Frontend**: alwaysracha/weather-ui (3 instances, load balanced)
- **Load Balancer**: nginx:alpine

## Prerequisites
- Docker & Docker Compose installed
- Images built and pushed to Docker Hub
- QNAP Container Station running

## Quick Start

### Quick Deploy
`./deploy.sh`

### Deploy
`docker-compose up -d`

### View Status
`docker-compose ps`

### View Logs
`docker-compose logs -f`

### Scale Frontend
`docker-compose up -d --scale weatherui=5`

### Stop Everything
`docker-compose down`

## File Structure
- `docker-compose.yml` - Container orchestration
- `nginx-lb.conf` - Load balancer configuration
- `.env.example` - Environment variables template
- `README.md` - This file

## Monitoring
Real-time resource usage
`docker stats`

Container logs
`docker logs <container-name>`

Nginx load balancer logs
`docker logs nginx-lb`

## Troubleshooting
- Check Container Station logs
- Verify images are pulled: `docker images`
- Test connectivity: `docker exec weatherapi curl http://weatherapi:5047/health`

## CI/CD Integration
This directory can be automatically updated by your CI/CD pipeline when deployment configs change.