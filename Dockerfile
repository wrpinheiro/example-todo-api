FROM busybox

COPY . /var/www/html

RUN chgrp -R www-data /var/www/html/storage /var/www/html/bootstrap/cache && \
    find /var/www/html/storage -type d -exec chmod 775 {} + && \
    find /var/www/html/bootstrap/cache -type d -exec chmod 775 {} + && \
    find /var/www/html/storage -type f -exec chmod 644 {} + && \
    find /var/www/html/bootstrap/cache -type f -exec chmod 644 {} +

VOLUME /var/www/html
