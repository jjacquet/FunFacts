# FunFacts
Single view iOS application that demonstrates a GameKit random generator using a data model.
This also includes the usage of XCTest UI Automation framework demonstrating View Object Model aka Page Object Model testing. 
The project was created in Xcode 8.1. The entire demo can ran in the simulator for testing purposes by selecting the Test Navigator and running the FunFactTest Target.

or

You this is a slight example of how I would run it in CI:

1. Open the terminal and pass the inline command:
⋅⋅* this clean the dervived data and builds an artifact .app that only has to be built once. 
`xcodebuild build-for-testing clean build -project FunFacts.xcodeproj/ -scheme FunFacts -destination 'platform=iOS Simulator,name=iPhone 7,OS=10.1' -only-testing:FunFactTest`

2. 
⋅⋅* this uses the prebuilt testing artifact for subsquent testing on local or slaved machines
`xcodebuild test-without-building -project FunFacts.xcodeproj/ -scheme FunFacts -destination 'platform=iOS Simulator,name=iPhone 7,OS=10.1' -only-testing:FunFactTest`

All test are autonomous and can be executed in random order.

Jeremiah Jacquet - All rights reserved ©
