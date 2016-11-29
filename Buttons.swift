//
//  Buttons.swift
//  FunFacts
//
//  Created by Jeremiah Jacquet on 11/29/16.
//  Copyright © 2016 Jeremiah Jacquet. All rights reserved.
//

import XCTest

extension Model {
    
    var funButton: XCUIElement { get { return funFactApp.buttons["Show Another Fun Fact"] } }
}
