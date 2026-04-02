#!/bin/bash
echo "Executando Rollback de emergência..."
docker-compose down
docker-compose up -d
echo "Rollback finalizado. Verifique os logs."