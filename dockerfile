
# Usa una imagen base con PHP 8 y Nginx
FROM richarvey/nginx-php-fpm:latest
RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl \
    libonig-dev \
    libzip-dev \
    libxml2-dev \
    libpq-dev
# Copiar los archivos de tu aplicación al contenedor
COPY . /var/www/html
# Establecer los permisos correctos para los archivos
RUN chown -R www-data:www-data /var/www/html
# Instalar dependencias de PHP con Composer
RUN curl -sS https://getcomposer.org/installer | php -- --installdir=/usr/local/bin --filename=composer
# Instalar las dependencias de Laravel
RUN composer install --no-dev --optimize-autoloader
# Ejecutar los comandos de caché en producción
RUN php artisan config:cache
RUN php artisan route:cache
# Exponer el puerto 80
EXPOSE 80
# Copiar y dar permisos al script deploy.sh
COPY deploy.sh /deploy.sh
RUN chmod +x /deploy.sh
# Comando por defecto para ejecutar el sc
