//
//  FunFactTest.swift
//  FunFactTest
//
//  Created by Jeremiah Jacquet on 11/28/16.
//  Copyright © 2016 Jeremiah Jacquet. All rights reserved.
//

import XCTest

class FunFactsUITests: TestCase {
    
    func testFactButton() {
        _ = FunFactLandingViewModel(funFactApp: funFactApp, testCase: self)
            .verifyFunFactButton()
            .tapFunFactButton()
    }
    
    func testTextChanged() {
        _ = FactsModel(funFactApp: funFactApp, testCase: self)
            .verifyFacts()
    }
    
    func testHeaderTitle() {
        _ = FunFactLandingViewModel(funFactApp: funFactApp, testCase: self)
            .verifyHeaderTitle()
    }
}
