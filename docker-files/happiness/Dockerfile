from austenito/ruby-2.1.2

RUN apt-get update
RUN apt-get install -qy nodejs

RUN mkdir /apps
WORKDIR /apps

EXPOSE 3001

ADD https://raw.githubusercontent.com/austenito/happiness-kitchen/master/docker-files/happiness/run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
CMD ["/usr/local/bin/run.sh"]

