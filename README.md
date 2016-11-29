# FunFacts
Single view iOS application that demonstrates a GameKit random generator using a data model.
This also includes the usage of XCTest UI Automation framework demonstrating View Object Model aka Page Object Model testing. 
The project was created in Xcode 8.1. The entire demo be can ran in the Xcode IDE via the simulator. For testing through the IDE, select the *Test Navigator* and run the *FunFactTest* Target.

or

I've provided a small example of the *xcodebuild* commandline arguments to be used in a Continuous Itegration shell.

1. Open the terminal and pass the inline command:
  
`xcodebuild build-for-testing clean build -project FunFacts.xcodeproj/ -scheme FunFacts -destination 'platform=iOS Simulator,name=iPhone 7,OS=10.1' -only-testing:FunFactTest`

  ( This cleans the dervived data and builds an artifact *.app* that only has to be built once. )

2. Now pass the follwing command to run the test target without recompiling

`xcodebuild test-without-building -project FunFacts.xcodeproj/ -scheme FunFacts -destination 'platform=iOS Simulator,name=iPhone 7,OS=10.1' -only-testing:FunFactTest`

  (This uses the prebuilt testing artifact for subsquent testing on local or slaved machines and also provides granular control over seperate testing targets.)

All tests are autonomous and can be executed in random order.

Application and Framework created by:
Jeremiah Jacquet - All rights reserved ©
