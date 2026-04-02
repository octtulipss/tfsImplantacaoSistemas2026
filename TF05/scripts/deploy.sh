#!/bin/bash
set -e

echo "Passo 1: Backup de segurança..."
mkdir -p backups
cp config/healthchecks.yml backups/config_$(date +%Y%m%d).bak

echo "Passo 2: Deploying novos containers..."
docker-compose up -d

echo "Passo 3: Healthcheck pós-deploy..."
sleep 10
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:5000/health/status || echo "500")

if [ "$STATUS" == "200" ]; then
    echo "SUCCESS: Deploy concluído e saudável."
else
    echo "ERROR: Sistema instável! Iniciando Rollback..."
    ./scripts/rollback.sh
    exit 1
fi