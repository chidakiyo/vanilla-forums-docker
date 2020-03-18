FROM alpine:3.7
WORKDIR /
RUN  apk update \
  && apk add --no-cache apache2 php7-apache2 php7-pdo php7-mysqli php7-pdo_mysql php7-intl php7-mcrypt php7-mbstring php7-session php7-curl php7-json php7-xml php7-zip php7-tokenizer php7-ctype php7-gd php7-dom openssl openrc unzip \
  && rm -rf /var/cache/apk/* \
  && wget https://open.vanillaforums.com/get/vanilla-core.zip \
  && unzip vanilla-core.zip \
  && rm -f vanilla-core.zip \
  && mkdir -p /opt \
  && mv package /opt/vanillaforums \
  && chown -R apache:apache /opt/vanillaforums \
  && ln -s  /opt/vanillaforums /var/www/localhost/htdocs \
  && mkdir -p /run/apache2 \
EXPOSE 80
VOLUME /opt/vanillaforums
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
