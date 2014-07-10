FROM ubuntu:14.04

# Add VOLUMEs to allow backup of config, logs and databases
VOLUME  ["/pgdata", "/config"]

ADD https://raw.githubusercontent.com/austenito/happiness-kitchen/master/docker-files/happiness-service/run.sh /config/happiness-service/run.sh
RUN chmod +x /config/happiness-service/run.sh

ADD https://raw.githubusercontent.com/austenito/happiness-kitchen/master/docker-files/happiness/run.sh /config/happiness/run.sh
RUN chmod +x /config/happiness-service/run.sh

CMD /bin/bash
