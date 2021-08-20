# PHP 8 - Laravel
Docker : Latest \
Webserver : Apache \
PHP : 8.0.9 \
Config : app.conf
# How to RUN
docker-compose up --build -d
# Test
http://localhost:8081 or http://127.0.0.1:8081
# CI/CD
Setup pada "secrets.HOST", "secrets.USERNAME", "secrets.PRIVATE_KEY" pada Actions secrets. \
Belum menggunakan testing tinggal ditambahkan pada :
https://github.com/ArwahDevops/php8-laravel/blob/master/.github/workflows/cicd.yml