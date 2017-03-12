FROM composer/composer:master-php5-alpine

ADD . /src/app/
WORKDIR /src/app

RUN \
  composer install && \
  cp includes/config.environment.inc.php includes/config.inc.php

EXPOSE 80

ENTRYPOINT [ "php", "-S", "0.0.0.0:80" ]
