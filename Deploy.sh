#!/bin/bash
# Asegúrate de que se detengan en caso de error
set -e
# Instalar dependencias de Composer
composer install --no-dev --optimize-autoloader
# Generar clave de aplicación
php artisan key:generate
# Ejecutar migraciones
echo "Ejecutando migraciones..."
php artisan migrate --force
# Optimizacion
php artisan route:cache
php artisan config:cache
php artisan route:cache
php artisan view:cache
# Listar rutas para verificar que todo está en orden
echo "Listando rutas..."
php artisan route:list
chmod -R 775 /var/www/html/database
php artisan serve --host=0.0.0.0 --port=10000
