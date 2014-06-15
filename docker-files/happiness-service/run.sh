#!/bin/bash

source /usr/local/share/chruby/chruby.sh
git clone https://github.com/austenito/happiness_service.git
cd happiness_service
chruby 2.1.2
bundle install
bundle exec rake db:create db:migrate RAILS_ENV=production
bundle exec rake assets:precompile
bundle exec unicorn_rails -c config/unicorn.rb -E production
