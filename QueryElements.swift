//
//  QueryElements.swift
//  FunFacts
//
//  Created by Jeremiah Jacquet on 11/29/16.
//  Copyright © 2016 Jeremiah Jacquet. All rights reserved.
//

import XCTest

extension Model {
    
    func fetchElementStaticText(_ elementString: String) -> XCUIElement{
        return funFactApp.staticTexts[elementString]
    }
    
    func fetchElementButton(_ buttonString: String) -> XCUIElement{
        return funFactApp.buttons[buttonString]
    }
}
