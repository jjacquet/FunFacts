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
        funButton.tap()
        
        return FunFactLandingViewModel(funFactApp: funFactApp, testCase: testCase)
    }
    
    var funButton: XCUIElement { get { return funFactApp.buttons["Show Another Fun Fact"] } }
}
