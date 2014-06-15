FROM ubuntu:14.04

# development tools
RUN apt-get update
RUN apt-get -qy install git vim tmux wget make libpq-dev

RUN wget -O ruby-install-0.4.3.tar.gz https://github.com/postmodern/ruby-install/archive/v0.4.3.tar.gz
RUN tar -xzvf ruby-install-0.4.3.tar.gz
WORKDIR ruby-install-0.4.3/
RUN make install
RUN ruby-install ruby 2.1.2

RUN wget -O chruby-0.3.8.tar.gz https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz
RUN tar -xzvf chruby-0.3.8.tar.gz
WORKDIR chruby-0.3.8/
RUN make install
RUN bash -c 'source /usr/local/share/chruby/chruby.sh'
RUN cp /usr/local/share/chruby/chruby.sh /etc/profile.d/chruby.sh

RUN bash -c 'source /usr/local/share/chruby/chruby.sh; chruby 2.1.2; gem install bundler'

RUN mkdir /apps
WORKDIR /apps

ADD https://raw.githubusercontent.com/austenito/happiness-kitchen/master/docker-files/happiness-service/run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh
CMD ["/usr/local/bin/run.sh"]

