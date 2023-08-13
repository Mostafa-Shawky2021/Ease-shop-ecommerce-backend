#!/usr/bin/env bash
echo "Running composer"

composer update --working-dir=/var/www/html
composer global require hirak/prestissimo

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."
php artisan route:cache

echo "Running migrations..."
php artisan migrate

echo "storage linking"
php artisan storage:link

echo "create new admin"
php artisan make:admin

curl -O -L https://npmjs.org/install.sh | bash

apk update

apk upgrade

apk add --update nodejs npm

apk del gd php-gd

apk add gd php82-gd

apk fix --reinstall gd php-gd php82-gd --with-webp