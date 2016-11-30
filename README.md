# FunFacts
Single view iOS application that demonstrates a GameKit random generator using a data model.
This also includes the usage of XCTest UI Automation framework demonstrating View Object Model aka Page Object Model testing. 
The project was created in Xcode 8.1. The entire demo be can ran in the Xcode IDE via the simulator. 

_Below I've provded 3 ways you can try out my test code and app:_

# 1. For testing within the Xcode IDE:

Select the *Test Navigator* and run the *FunFactTest* Target. 

# 2. For simpler execution in Xcode press: 
# ⌘ + U

or

# 3. I've provided a small example of the *xcodebuild* commandline arguments that can be ran in the terminal or in a Continuous Itegration shell. Open the terminal and pass the inline command:
  
`xcodebuild build-for-testing clean -project FunFacts.xcodeproj/ -scheme FunFacts -destination 'platform=iOS Simulator,name=iPhone 7,OS=10.1'`

  _( This cleans the dervived data and builds an artifact *.app* that only has to be built once. )_

# Now pass the follwing command to run the test target without recompiling

`xcodebuild test-without-building -project FunFacts.xcodeproj/ -scheme FunFacts -destination 'platform=iOS Simulator,name=iPhone 7,OS=10.1' -only-testing:FunFactTest`

  _(This uses the prebuilt testing artifact for subsquent testing on local or slaved machines and also provides granular control over seperate testing targets.)_

All tests are autonomous and can be executed in random order.

Application and implementation by: 
Jeremiah Jacquet - All rights reserved ©
