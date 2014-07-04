#!/bin/bash

source /usr/local/share/chruby/chruby.sh
git clone https://github.com/austenito/happiness_service.git
cd happiness_service
mkdir pids
mkdir log
chruby 2.1.2
bundle install --without development test

/usr/bin/sed -i "s/DEFAULT_HOST_URL/${HAPPINESS_SERVICE_PORT_3000_TCP_ADDR}:${HAPPINESS_SERIVCE_PORT_3000_TCP_PORT}/" config/environments/production.rb

bundle exec rake db:create db:migrate db:seed RAILS_ENV=production
bundle exec rake assets:precompile RAILS_ENV=production
bundle exec unicorn_rails -c config/unicorn.rb -E production -p 3000
