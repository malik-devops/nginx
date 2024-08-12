# Use the official NGINX base image
FROM nginx:alpine

# Copy your static files to the NGINX web root
COPY ./html /usr/share/nginx/html

# (Optional) Copy a custom NGINX configuration file
COPY ./nginx.conf /etc/nginx/nginx.conf

# Expose the port NGINX will serve on
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
