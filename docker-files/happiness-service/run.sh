#!/bin/bash

source /usr/local/share/chruby/chruby.sh
git clone https://github.com/austenito/happiness_service.git
cd happiness_service
mkdir pids
mkdir log
chruby 2.1.2
bundle install --local --without development test
bundle exec rake db:create db:migrate db:seed RAILS_ENV=production
bundle exec rake assets:precompile RAILS_ENV=production
bundle exec unicorn_rails -c config/unicorn.rb -E production -p 3000
