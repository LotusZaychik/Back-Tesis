
#!/bin/bash

# filepath: deploy.sh

# Exit immediately if a command exits with a non-zero status
set -e

# Update package lists
sudo apt-get update

# Install necessary packages
sudo apt-get install -y nginx php-fpm php-mysql php-xml php-mbstring php-zip unzip curl

# Install Composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

# Navigate to the project directory
cd /path/to/your/laravel/project

# Install PHP dependencies
composer install --no-dev --optimize-autoloader

# Set permissions for Laravel
sudo chown -R www-data:www-data storage bootstrap/cache
sudo chmod -R 775 storage bootstrap/cache

# Generate application key
php artisan key:generate

# Run database migrations
php artisan migrate --force

# Clear and cache configurations
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Copy Nginx configuration
sudo cp /path/to/your/nginx.conf /etc/nginx/sites-available/default

# Restart Nginx to apply the new configuration
sudo systemctl restart nginx

# Ensure the sad.svg file is in the correct location
mkdir -p /var/www/html/api
cp /path/to/your/local/sad.svg /var/www/html/api/sad.svg

echo "Deployment completed successfully."
