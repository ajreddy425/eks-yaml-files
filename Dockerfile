# Use an official Apache HTTP Server image as a parent image
FROM httpd:2.4

# Set the working directory in the container
WORKDIR /usr/local/apache2/htdocs

# Copy the local index.html from the html directory to the container
COPY ./html/index.html .

# Add the ServerName directive to suppress the warning
RUN echo "ServerName localhost" >> /usr/local/apache2/conf/httpd.conf

# Expose port 80 to the outside world
EXPOSE 80
