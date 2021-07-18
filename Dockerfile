FROM httpd
RUN apt update && apt install -y vim
RUN rm /usr/local/apache2/htdocs/index.html

COPY ./style /usr/local/apache2/style
COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf
