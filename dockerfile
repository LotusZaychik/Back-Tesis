
# Usa una imagen base con PHP 8 y Nginx
FROM richarvey/nginx-php-fpm:latest

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# Copiar los archivos de tu aplicación al contenedor
COPY . .

# Instalar Composer globalmente
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Instalar las dependencias de Laravel
RUN composer install --no-dev --optimize-autoloader

# Configurar los permisos correctos para Laravel
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 775 storage bootstrap/cache

# Ejecutar los comandos de caché en producción
RUN php artisan config:cache \
    && php artisan route:cache

# Exponer el puerto 80
EXPOSE 80

# Copiar y configurar el script de despliegue
COPY deploy.sh /deploy.sh
RUN chmod +x /deploy.sh

# Comando por defecto para ejecutar el script deploy.sh
CMD ["/deploy.sh"]
