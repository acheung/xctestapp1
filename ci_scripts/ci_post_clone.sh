#!/bin/zsh

# tools
brew install ruby

brew install swiftlint
swiftlint src --reporter sonarqube > swiftlint.json

brew install lizard-analyzer
lizard './src' -l swift --xml > lizard-reports.xml

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
gem install bundler -v "$(grep -A 1 "BUNDLED WITH" Gemfile.lock | tail -n 1)" || :
bundle install

# dependencies
bundle exec pod install
