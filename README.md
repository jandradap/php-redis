# PHP-REDIS
#### **Linux, Apache, PHP preparado para conectar con Redis.**
[![](https://images.microbadger.com/badges/version/jorgeandrada/php-redis.svg)](https://microbadger.com/images/jorgeandrada/php-redis "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/jorgeandrada/php-redis.svg)](https://microbadger.com/images/jorgeandrada/php-redis "Get your own image badge on microbadger.com")

### Uso
	docker pull jorgeandrada/php-redis
	docker run --name=phpredis -p 8080:80  -h larp -d jorgeandrada/php-redis
	docker exec -it phpredis /bin/bash

### Uso con persistencia de datos
	docker pull jorgeandrada/php-redis
	sudo mkdir /srv/apache
	docker run --name=phpredis -p 8080:80 -v /srv/apache:/var/www/html -h phpredis -d jorgeandrada/php-redis
	docker exec -it phpredis /bin/bash

### Backup BD

La base de datos está localizada en /var/lib/redis/dump.rdb
