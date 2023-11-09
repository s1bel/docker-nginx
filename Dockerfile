FROM nginx
RUN rm -f /etc/nginx/conf.d/default.conf
COPY conf/conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY content/1.txt /usr/share/nginx/html/1.txt
RUN echo -n 'admin:' >> /etc/nginx/.htpasswd
RUN openssl passwd -apr1 123 >> /etc/nginx/.htpasswd
LABEL version="1.0"
LABEL description="Docker image with customly configured nginx"