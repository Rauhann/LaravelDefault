FROM ambientum/php:7.3-nginx

COPY --chown=ambientum:ambientum . /var/www/app
COPY --chown=ambientum:ambientum ./nginx/vhost.conf /etc/nginx/sites/enabled.conf
COPY --chown=ambientum:ambientum ./nginx/99_overrides.ini /etc/php7/conf.d/

RUN composer install --no-ansi --no-dev --no-interaction --no-progress --no-scripts --optimize-autoloader

# CMD ["php", "artisan", "queue:listen"] # for queue
