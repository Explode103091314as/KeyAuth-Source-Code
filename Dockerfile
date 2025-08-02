FROM php:8.2-cli

# Install dependencies (optional: zip, mysqli, etc.)
RUN apt-get update && apt-get install -y unzip

# Set working directory
WORKDIR /var/www/html

# Copy everything to container
COPY . .

# Expose port for Render
EXPOSE 10000

# Run PHP's built-in server from current directory
CMD ["php", "-S", "0.0.0.0:10000", "-t", "."]
