#!/bin/bash
echo "Limpando recursos do Docker..."
docker system prune -f
echo "Limpando logs antigos..."
find ./api -name "*.log" -type f -mtime +7 -delete
echo "Manutenção concluída!"