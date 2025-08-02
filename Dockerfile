FROM php:8.2-cli

# Optional: install dependencies
RUN apt-get update && apt-get install -y unzip

WORKDIR /var/www/html
COPY public/ .

CMD [ "php", "-S", "0.0.0.0:10000" ]
