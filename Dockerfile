FROM serversideup/php:beta-8.3-cli-alpine

USER root

RUN install-php-extensions imap http gd sockets bcmath 

RUN apk add --no-cache git

# 设置工作目录
WORKDIR /var/www/html
