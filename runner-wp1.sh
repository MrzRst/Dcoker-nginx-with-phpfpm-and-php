docker run -d \
  -v  /etc/timezone:/etc/timezone:ro \
  -v /etc/localtime:/etc/localtime:ro \
  -v /var/www/html:/var/www/html \
  -v /opt/wp1/etc/nginx.conf:/etc/nginx/nginx.conf \
  -v /opt/wp1/etc/php.ini:/etc/php/7.2/cli/php.ini \
  -v /opt/wp1/etc/php-fpm.ini:/etc/php/7.2/fpm/php.ini \
  -v /opt/wp1/etc/php-fpm.conf:/etc/php/7.2/fpm/php-fpm.conf \
  -v /opt/wp1/etc//www.conf:/etc/php/7.2/fpm/pool.d/www.conf \
  -v /opt/wp1/etc/default:/etc/nginx/sites-available/default \
  -v /opt/wp1/etc/default:/etc/nginx/sites-enabled/default \
  --restart=always \
  --name wp1 \
  -p 80:80 \
  -p 443:443\
    wp1

