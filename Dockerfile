FROM nginx:alpine 

COPY assets /var/www/html/
COPY forms /var/www/html/
COPY inner-page.html /var/www/html/
COPY portfolio-details.html /var/www/html/
COPY index.html /var/www/html/

EXPOSE 80 

CMD ["nginx", "-g", "daemon off;"]