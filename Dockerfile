FROM ubuntu
MAINTAINER Jorge Andrada <jandradap@gmail.com>

RUN apt-get update
RUN apt-get install -y unzip \
	apt-utils \
	curl \
	apache2 \
	libapache2-mod-php \
	libapache2-mod-php7.0 \
	php7.0 \
	php7.0-cli \
	php7.0-json \
	php-curl \
	jq \
	php-redis \

#borro descargas
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /var/cache/apt/archives/*

#Personalizamos apache2
RUN rm -rf /var/www/html/index.html
COPY index.php /var/www/html/index.php

#exponemos puertos
EXPOSE 80

#directorio de trabajo por defecto
WORKDIR /var/www/html/

#Ejecuto apache2
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
