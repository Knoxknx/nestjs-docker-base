#!/bin/bash

# Salir inmediatamente si un comando falla
set -e

# Imprimir cada comando antes de ejecutarlo (opcional)
set -x

# Asegurarse de que el archivo .env esté presente en la raíz
if [ ! -f ./.env ]; then
  echo ".env file not found in the root directory."
  exit 1
fi

# Construir la imagen Docker
docker-compose build

# Iniciar los servicios definidos en docker-compose.yaml
docker-compose up