# Weather App Deployment

Docker Compose orchestration for the Weather App.

## Components
- API: alwaysracha/weather-api
- Frontend: alwaysracha/weather-ui
- Load Balancer: nginx:alpine

## Deployment

### Prerequisites
- Docker & Docker Compose installed
- Access to Docker Hub images

### Deploy to QNAP
1. Clone this repo on QNAP
2. Run: `docker-compose up -d`
3. Access at http://qnap-ip:3000

## Scaling
docker-compose up -d --scale weatherui=3

text

## Architecture
[Add your architecture diagram here]
