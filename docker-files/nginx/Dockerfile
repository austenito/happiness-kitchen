from austenito/ruby-2.1.2

# Update the repository
RUN apt-get update

# Install necessary tools
RUN apt-get install -y nano wget dialog net-tools

# Download and Install Nginx
RUN apt-get install -y nginx

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Expose ports
EXPOSE 80

ADD https://raw.githubusercontent.com/austenito/happiness-kitchen/master/docker-files/nginx/run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
CMD ["/usr/local/bin/run.sh"]
