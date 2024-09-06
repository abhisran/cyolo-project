# Base image for NGINX
FROM nginx:latest

RUN echo "Hello Cyolo" > /usr/share/nginx/html/index.html

# Copy your NGINX configuration files into the container
COPY openid_connect.server_conf /etc/nginx/conf.d/openid_connect.server_conf
COPY frontend.conf /etc/nginx/conf.d/frontend.conf

# Expose the port 80 to the host machine
EXPOSE 80

# Run NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]