# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the CSS files and any other web files into the container
COPY css /usr/share/nginx/html/css
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80

# Run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
