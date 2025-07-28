#!/bin/bash
set -e # Termina el script si un comando falla

# Asigna 'dev' como entorno por defecto si no se especifica uno
ENV=${1:-dev}
# Asigna 'web' como plataforma por defecto si no se especifica una
PLATFORM=${2:-web}

echo ">>> Compilando para el entorno: $ENV en la plataforma: $PLATFORM"

# Verifica que el archivo de configuración exista
if [ ! -f "config/$ENV.json" ]; then
    echo "Error: El archivo de configuración config/$ENV.json no existe."
    exit 1
fi

# Ejecuta el comando de compilación de Flutter
flutter build $PLATFORM --dart-define-from-file=config/$ENV.json

echo ">>> Compilación finalizada para $ENV."
