FROM nginx:1.24.0

RUN chmod 777 /var/log/nginx && chmod 777 /run

RUN rm /etc/nginx/conf.d/default.conf

COPY custom_nginx.conf /etc/nginx/conf.d/default.conf

COPY html/lamia.html /usr/share/nginx/html/

EXPOSE 81

USER root

CMD ["nginx", "-g", "daemon off;"]
