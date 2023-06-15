#!/bin/zsh

# code analysis
brew install lizard-analyzer

lizard './src' -l swift --xml > lizard-reports.xml