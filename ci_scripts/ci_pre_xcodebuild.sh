#!/bin/sh

gem install bundler -v "$(grep -A 1 "BUNDLED WITH" Gemfile.lock | tail -n 1)" || :

bundle install

# dependencies
bundle exec pod install