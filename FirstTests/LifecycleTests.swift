//
//  LifecycleTests.swift
//  FirstTests
//
//  Created by Sam LoBue on 1/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import XCTest
@testable import First

class LifecycleTests: XCTestCase {

    override class func setUp() {
        print("In class setUp.")
    }
    
    override class func tearDown() {
        print("In class tearDown.")
    }
    
    override func setUp() {
        print("In setUp.")
    }

    override func tearDown() {
        print("In tearDown.")
    }

    func testExample() {
        print("Starting test.")
        
        addTeardownBlock {
            print("In first tearDown block.")
        }
        
        print("In middle of test.")
        
        addTeardownBlock {
            print("In second tearDown block.")
        }
        
        print("Finishing test.")
    }
}

