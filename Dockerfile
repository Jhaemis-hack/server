FROM nginx:latest

# Copy the fixed NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Set default port (fallback to 8080 if PORT is not set)
ENV PORT=8080
EXPOSE 8080

# Replace $PORT in the config file before starting NGINX
CMD sh -c "envsubst '\$PORT' < /etc/nginx/nginx.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"



