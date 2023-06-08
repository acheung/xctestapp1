#!/bin/sh

# Install CocoaPods using Homebrew.
# brew install cocoapods
# gem install bundler -v "$(grep -A 1 "BUNDLED WITH" Gemfile.lock | tail -n 1)" || :
# bundle install

# # Install dependencies you manage with CocoaPods.
# bundle exec pod install

brew install cocoapods
pod install