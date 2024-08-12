# Use the official NGINX base image
FROM nginx:alpine

# Copy your custom NGINX configuration file (if you have one)
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy your static files (e.g., HTML, CSS, JS) to the NGINX web root
COPY ./dist/nginx /usr/share/nginx/html

# Expose the port NGINX will serve on
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]
