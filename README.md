# PHP-REDIS
#### **Linux, Apache, PHP preparado para conectar con Redis.**


### Uso
	docker pull jorgeandrada/php-redis
	docker run --name=phpredis -p 8080:80  -h larp -d jorgeandrada/php-redis
	docker exec -it larp /bin/bash

### Uso con persistencia de datos
	docker pull jorgeandrada/php-redis
	sudo mkdir /srv/apache
	docker run --name=phpredis -p 8080:80 -v /srv/apache:/var/www/html -h phpredis -d jorgeandrada/php-redis
	docker exec -it larp /bin/bash

### Backup BD
	La base de datos está localizada en /var/lib/redis/dump.rdb
