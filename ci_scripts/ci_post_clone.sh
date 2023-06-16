#!/bin/zsh
set -e
set -o pipefail

# tools
export HOMEBREW_NO_INSTALL_CLEANUP=1
brew install ruby

brew install swiftlint
swiftlint ./src lint --strict

brew install lizard-analyzer
lizard './src' -l swift --xml > lizard-reports.xml
# TODO: upload artifact to sonar
cat lizard-reports.xml

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
gem install bundler -v "$(grep -A 1 "BUNDLED WITH" Gemfile.lock | tail -n 1)" || :
bundle install

# dependencies
bundle exec pod install
