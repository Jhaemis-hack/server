FROM nginx:latest

# Copy the fixed NGINX configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Set the dynamic port assigned by Render/Koyeb
ENV PORT=8080
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
