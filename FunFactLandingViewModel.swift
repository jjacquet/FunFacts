//
//  FunFactLandingViewModel.swift
//  FunFacts
//
//  Created by Jeremiah Jacquet on 11/28/16.
//  Copyright © 2016 Jeremiah Jacquet. All rights reserved.
//

import XCTest

class FunFactLandingViewModel: Model {
    
    func verifyFunFactButton() -> FunFactLandingViewModel {
        waitForExistenceElementInSeconds(funButton, waitSeconds: 5)
        XCTAssertTrue(funButton.isEnabled)
        return FunFactLandingViewModel(funFactApp: funFactApp, testCase: testCase)
    }
    
    func tapFunFactButton() -> FunFactLandingViewModel {
        waitForExistenceElementInSeconds(funButton, waitSeconds: 5)
        funButton.tap()
        return FunFactLandingViewModel(funFactApp: funFactApp, testCase: testCase)
    }
    
    func verifyHeaderTitle() -> FunFactLandingViewModel {
        waitForExistenceElementInSeconds(headerTitle, waitSeconds: 5)
        XCTAssertTrue(headerTitle.exists)
        return FunFactLandingViewModel(funFactApp: funFactApp, testCase: testCase)
    }
    
    var headerTitle: XCUIElement { get { return funFactApp.staticTexts["Did you know?"] } }
}
