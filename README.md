# PHP 8 - Laravel
Webserver : Apache \
PHP : 8.0.9 \
Config : app.conf
# How to RUN
docker-compose up --build -d
# Info
Jika folder vendor tidak dimasukan ke repo maka edit pada .dockerignore & tambahkan composer pada Dockerfile.
# CI/CD
Setup pada "secrets.HOST", "secrets.USERNAME", "secrets.PRIVATE_KEY" pada Actions secrets. \
Belum menggunakan testing tinggal ditambahkan pada :
https://github.com/ArwahDevops/php8-laravel/blob/master/.github/workflows/cicd.yml