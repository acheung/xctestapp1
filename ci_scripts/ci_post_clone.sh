#!/bin/zsh
set -e
set -o pipefail

# tools
export HOMEBREW_NO_INSTALL_CLEANUP=1
brew install ruby

brew install swiftlint
export SWIFT_LINT_CONFIG="./src/.swiftlint.yml"
sed -i '' 's/CI_PATH/src/g' ${SWIFT_LINT_CONFIG}
swiftlint ./src --strict

brew install lizard-analyzer
lizard './src' -l swift --xml > lizard-reports.xml
# TODO: upload artifact to sonar
cat lizard-reports.xml

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH
gem install bundler -v "$(grep -A 1 "BUNDLED WITH" Gemfile.lock | tail -n 1)" || :
bundle install

# dependencies
# cp ./.netrc ~/.netrc
# chmod 600 ~/.netrc
# bundle exec pod repo-art add cocoapods-local "https://pelmorex.jfrog.io/artifactory/api/pods/cocoapods-local"
# bundle exec pod repo-art update cocoapods-local
bundle exec pod install --repo-update
