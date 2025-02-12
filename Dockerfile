# Use the official Nginx base image
FROM nginx:latest

# Copy custom Nginx config to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for Fly.io
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
