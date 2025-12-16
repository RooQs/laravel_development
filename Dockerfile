FROM serversideup/php:beta-8.3-cli-alpine

USER root

RUN install-php-extensions imap http gd sockets bcmath 
RUN composer config -g repos.packagist composer https://mirrors.tencent.com/composer/
RUN apk add --no-cache git

# 设置工作目录
WORKDIR /var/www/html
