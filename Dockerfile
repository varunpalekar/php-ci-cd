FROM php:7.2-fpm

# Set working directory
WORKDIR /var/www

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    mysql-client \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl \
    libgmp-dev

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

## Opencensus
RUN pecl install opencensus-alpha

RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/

# Install extensions
RUN docker-php-ext-install pdo_mysql \
    mbstring \
    zip \
    exif \
    pcntl \
    gd \
    sockets \
    gmp

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Add user for laravel application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Copy composer.lock and composer.json
COPY composer.lock composer.json /var/www/

RUN composer install --prefer-source --no-dev --no-autoloader --no-scripts --no-progress --no-suggest

# Copy existing application directory contents
COPY . /var/www

RUN composer install --prefer-dist --no-dev -o

# Copy existing application directory permissions
COPY --chown=www:www . /var/www

ADD ./docker/php/local.ini /usr/local/etc/php/conf.d

# Change current user to www
USER www

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]