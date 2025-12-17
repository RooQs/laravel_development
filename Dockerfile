FROM serversideup/php:beta-8.3-cli-alpine

USER root

RUN apk update
RUN apk upgrade --available

RUN install-php-extensions imap http gd sockets bcmath 
RUN composer config -g repos.packagist composer https://mirrors.tencent.com/composer/
RUN docker-php-serversideup-dep-install-alpine git 

# 设置工作目录
WORKDIR /var/www/html