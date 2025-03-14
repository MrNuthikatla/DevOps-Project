FROM nginx:latest

# Remove default Nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy only necessary files
COPY public_html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
