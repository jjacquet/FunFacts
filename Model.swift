//
//  Model.swift
//  FunFacts
//
//  Created by Jeremiah Jacquet on 11/28/16.
//  Copyright © 2016 Jeremiah Jacquet. All rights reserved.
//

import Foundation
import XCTest

class Model {
    
    var funFactApp: XCUIApplication
    var testCase: TestCase
    
    init(funFactApp: XCUIApplication, testCase: TestCase) {
        self.funFactApp = funFactApp
        self.testCase = testCase
    }
}
