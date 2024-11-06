FROM php:8.3-fpm-alpine

RUN apk add --no-cache bash make

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

# Avaliable PHP extensions: https://github.com/mlocati/docker-php-extension-installer#supported-php-extensions
# Just set list of extensions like:
# @composer ext1 ext2 ext3
RUN install-php-extensions @composer pdo_mysql

WORKDIR /app
