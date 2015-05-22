#!/bin/sh
xctool test -project DemoCodeCoverage.xcodeproj \
-scheme DemoCodeCoverage \
-reporter plain \
-sdk iphonesimulator | xcpretty -c --report junit

#run frankencover
groovy frankencover -source-dir "DemoCodeCoverage/Classes" -required-coverage 80