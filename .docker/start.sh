#!/bin/sh

echo "[🔧] Corrigindo permissões em storage e cache..."
chown -R www-data:www-data storage bootstrap/cache
chmod -R ug+rwx storage bootstrap/cache

echo "[📦] Instalando dependências do Laravel..."
composer install --no-interaction

if grep -q "APP_KEY=" .env && [ -z "$(grep APP_KEY= .env | cut -d '=' -f2)" ]; then
  echo "[🔐] Gerando APP_KEY..."
  php artisan key:generate
fi

echo "[🌐] Configurando o ambiente..."
php artisan session:table

echo "[🗃️] Rodando migrations..."
php artisan migrate --force

echo "[🚀] Instalando Laravel Passport..."
php artisan passport:install --force

echo "[🔗] Criando storage:link..."
php artisan storage:link

echo "[📂] Cacheando configurações..."
php artisan config:cache

echo "[✅] Laravel pronto!"
php-fpm
