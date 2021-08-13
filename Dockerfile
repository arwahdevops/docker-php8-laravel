FROM php:8.0.9-apache
MAINTAINER Riki Permana <rikipermana@live.com>

#Create Dir & Copy Apache config
RUN mkdir /var/www/html/app
COPY /server-config/app.conf /etc/apache2/sites-available/
#Copy APP [see in .dockerignore]
COPY . /var/www/html/app
#Run Composer install
#RUN cd /var/www/html/app && composer install && php artisan key:generate
#Permission
RUN chmod -R 777 /var/www/html/app/storage
#Remove apache-config folder
RUN cd /var/www/html/app && rm -R server-config/
#Enable VHOST
RUN a2dissite 000-default.conf
RUN a2ensite app.conf