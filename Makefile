t=

up:
	docker-compose up
down:
	docker-compose down
php:
	docker exec -it laravel-app bash
db:
	docker exec -it laravel-mysql bash -c "mysql -u laravel -p'laravel' laravel"
env:
	cp .env.example .env && php artisan key:generate
migrate:
	php artisan migrate
migrate-fresh:
	php artisan migrate:fresh
seed:
	php artisan db:seed
install:
	composer install
update:
	composer update
serve:
	php artisan route:clear && php artisan config:clear && php artisan cache:clear && chmod -R 777 storage bootstrap/cache && php artisan serve
infyom:
	composer require yajra/laravel-datatables-oracle:"~9.0" && composer require yajra/laravel-datatables-buttons:^4.0 && composer require yajra/laravel-datatables-html:^4.0
datatables:
	php artisan vendor:publish --tag=datatables --force && php artisan vendor:publish --tag=datatables-buttons --force && php artisan vendor:publish --tag=datatables-html --force