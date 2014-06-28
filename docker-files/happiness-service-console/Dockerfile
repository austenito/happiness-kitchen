from ubuntu:ruby-2.1.2

RUN mkdir /apps
WORKDIR /apps

ADD https://raw.githubusercontent.com/austenito/happiness-kitchen/master/docker-files/happiness-service-console/run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
CMD ["/bin/bash"]

