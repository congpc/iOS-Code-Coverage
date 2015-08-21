#!/bin/sh
# First Run Tests
xcodebuild test -project DemoCodeCoverage.xcodeproj/ -scheme 'DemoCodeCoverage' -configuration Debug -destination 'platform=iOS Simulator,name=iPhone 6' | xcpretty -c --report junit

#We set required coverage to 80% - build fails if coverage falls below this value.
# Now Produce Test Coverage Report
#groovy http://frankencover.it/with -source-dir "DemoCodeCoverage/Classes" -required-coverage 80
# Use for local
groovy frankencover -source-dir "DemoCodeCoverage/Classes" -required-coverage 80

