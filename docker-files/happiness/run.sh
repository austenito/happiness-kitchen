#!/bin/bash

source /usr/local/share/chruby/chruby.sh
cd /apps
git clone https://github.com/austenito/happiness.git
cd happiness
mkdir pids
mkdir log
chruby 2.1.2
bundle install --without development test
bundle exec rake db:create db:migrate RAILS_ENV=production
bundle exec rake assets:precompile RAILS_ENV=production
bundle exec unicorn_rails -c config/unicorn.rb -E production -p 3001

