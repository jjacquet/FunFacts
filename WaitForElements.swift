//
//  WaitForElements.swift
//  FunFacts
//
//  Created by Jeremiah Jacquet on 11/28/16.
//  Copyright © 2016 Jeremiah Jacquet. All rights reserved.
//

import XCTest

extension Model {
    
    func waitForExistenceElementInSeconds(_ element: XCUIElement, waitSeconds: Double, file: String = #file, line: UInt = #line){
        let predicate = NSPredicate(format: "exists == true")
        testCase.expectation(for: predicate, evaluatedWith: element, handler: nil)
        testCase.waitForExpectations(timeout: waitSeconds) { (error) -> Void in
            if (error != nil) {
                let message = "Failed to find \(element) after \(waitSeconds) seconds."
                self.testCase.recordFailure(withDescription: message, inFile: file, atLine: line, expected: true)
            }
        }
        
    }
}
