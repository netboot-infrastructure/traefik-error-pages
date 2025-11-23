FROM docker.io/nginxinc/nginx-unprivileged:latest

# Copy HTML files into Nginx default folder
COPY html/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Default command to run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
