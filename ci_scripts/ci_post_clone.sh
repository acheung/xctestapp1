#!/bin/sh

brew install ruby
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
gem install bundler -v "$(grep -A 1 "BUNDLED WITH" Gemfile.lock | tail -n 1)" || :
# brew install cocoapods
# pod install
bundle install
bundle exec pod install