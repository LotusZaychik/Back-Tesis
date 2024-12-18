#!/bin/bash
# Asegúrate de que se detengan en caso de error
set -e
# Instalar Faker si no está instalado
echo "Instalando Faker..."
composer require fakerphp/faker --dev
# Instalar dependencias de Composer
composer install --no-dev --optimize-autoloader
# Ejecutar migraciones
php artisan migrate --force
# Cachear configuraciones
echo "Cacheando configuraciones..."
php artisan config:cache
# Optimizacion
php artisan route:cache
php artisan config:cache
php artisan route:cache
php artisan view:cache
# Listar rutas para verificar que todo está en orden
php artisan route:list
chmod -R 775 /var/www/html/database
# Ajustar permisos del archivo
chmod 644 /var/www/html/api/sad.svg

# Ajustar permisos del directorio
chmod 755 /var/www/html/api
php artisan serve --host=0.0.0.0 --port=10000
