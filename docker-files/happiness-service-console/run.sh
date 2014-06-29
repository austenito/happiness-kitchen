#!/bin/bash

source /usr/local/share/chruby/chruby.sh
git clone https://github.com/austenito/happiness_service.git
cd happiness_service
chruby 2.1.2
bundle install
