FROM ubuntu
LABEL Maintainer="Mrz.Rst"\
      Description="ubuntu container with nginx and php"


RUN apt update -y \
    && apt install nginx  net-tools vim curl  php-mysql php-curl php-gd php-xml php-mbstring php-xmlrpc php-zip  php-fpm  supervisor -y
RUN mkdir -p /var/log/supervisor
COPY ./supervisor.conf /etc/supervisor/conf.d/
EXPOSE 80 443
CMD ["/usr/bin/supervisord"]
~                                                                                                                              
~                                   
