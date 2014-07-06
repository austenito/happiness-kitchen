from austenito:ruby-2.1.2

RUN mkdir /apps
WORKDIR /apps

EXPOSE 3000

ADD https://raw.githubusercontent.com/austenito/happiness-kitchen/master/docker-files/happiness-service/run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
CMD ["/usr/local/bin/run.sh"]

