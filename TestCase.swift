//
//  TestCase.swift
//  FunFacts
//
//  Created by Jeremiah Jacquet on 11/28/16.
//  Copyright © 2016 Jeremiah Jacquet. All rights reserved.
//

import XCTest
import UIKit
import Foundation

class TestCase: XCTestCase {
    
    var funFactApp: XCUIApplication!
    
    override func setUp() {
        funFactApp = XCUIApplication()
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
