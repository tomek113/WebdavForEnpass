FROM ubuntu 

RUN apt-get update
RUN apt-get install -y nginx-full
COPY nginx.conf /etc/nginx/
COPY .passwords.list /etc/nginx/
COPY webdav /etc/nginx/sites-available/
RUN rm /etc/nginx/sites-enabled/default && ln -s /etc/nginx/sites-available/webdav /etc/nginx/sites-enabled/webdav
RUN mkdir -p /var/tmp/nginx/client-bodies && chown -R www-data:www-data /var/tmp/nginx && chmod -R 750 /var/tmp/nginx && mkdir -p /var/www/webdav/enpass && chown -R www-data:www-data /var/www/webdav && chmod -R 750 /var/www/webdav

CMD ["/usr/sbin/nginx"]
