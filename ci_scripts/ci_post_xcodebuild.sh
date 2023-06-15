#!/bin/sh

# code analysis
brew install lizard-analyzer

lizard './XCTestApp1' -l swift --xml -x "./Pods/*" -x "./XCTestApp1Tests/*" -x "./XCTestApp1UITests/*" > lizard-reports.xml