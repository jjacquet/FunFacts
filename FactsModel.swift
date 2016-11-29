//
//  FactsModel.swift
//  FunFacts
//
//  Created by Jeremiah Jacquet on 11/29/16.
//  Copyright © 2016 Jeremiah Jacquet. All rights reserved.
//

import XCTest

class FactsModel: Model {
    
    func verifyFacts() -> FactsModel {
        for _ in 0...10{
            funButton.tap()
            XCTAssertTrue(fact0.exists
                || fact1.exists
                || fact2.exists
                || fact3.exists
                || fact4.exists
                || fact5.exists
                || fact6.exists
                || fact7.exists
                || fact8.exists
                || fact9.exists)
        }
        return FactsModel(funFactApp: funFactApp, testCase: testCase)
    }
    
    var fact0: XCUIElement { get { return funFactApp.staticTexts["Ants stretch when they wake up in the morning."] } }
    var fact1: XCUIElement { get { return funFactApp.staticTexts["Ostriches can run faster than horses."] } }
    var fact2: XCUIElement { get { return funFactApp.staticTexts["Olympic gold medals are actually made mostly of silver."] } }
    var fact3: XCUIElement { get { return funFactApp.staticTexts["You are born with 300 bones; by the time you are an adult you will have 206."] } }
    var fact4: XCUIElement { get { return funFactApp.staticTexts["It takes about 8 minutes for light from the Sun to reach Earth."] } }
    var fact5: XCUIElement { get { return funFactApp.staticTexts["Some bamboo plants can grow almost a meter in just one day."] } }
    var fact6: XCUIElement { get { return funFactApp.staticTexts["The state of Florida is bigger than England."] } }
    var fact7: XCUIElement { get { return funFactApp.staticTexts["Some penguins can leap 2-3 meters out of the water."] } }
    var fact8: XCUIElement { get { return funFactApp.staticTexts["On average, it takes 66 days to form a new habit."] } }
    var fact9: XCUIElement { get { return funFactApp.staticTexts["Mammoths still walked the Earth when the Great Pyramid was being built."] } }
}
