#!/bin/bash
# deploy.sh - Deploy to QNAP

QNAP_IP="${QNAP_IP:-10.10.0.128}"
QNAP_USER="${QNAP_USER:-kracha}"
QNAP_PATH="/share/Container/weather-app"

echo "Deploying to QNAP..."

# Copy files
scp docker-compose.yml $QNAP_USER@$QNAP_IP:$QNAP_PATH/
scp nginx-lb.conf $QNAP_USER@$QNAP_IP:$QNAP_PATH/

# Deploy
ssh $QNAP_USER@$QNAP_IP << 'EOSSH'
cd /share/Container/weather-app
docker-compose down
docker-compose pull
docker-compose up -d
EOSSH

echo "Deployment complete!"
echo "Access at http://$QNAP_IP:3000"

