//
//  ConverterTests.swift
//  FirstTests
//
//  Created by Sam LoBue on 1/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import XCTest
@ testable import First

class ConverterTests: XCTestCase {

    // sut = System Under Test, referred to whatever object you are testing in the code
    var sut: Converter!
    
    override func setUp() {
        continueAfterFailure = false
        sut = Converter()
    }

    override func tearDown() {
        sut = nil
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test32FahrenheitIsZeroCelsius() {
        // GIVEN
        let input = 32.0
        
        // WHEN
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        // THEN
        XCTAssertEqual(celsius, 0, accuracy: 0.000001)
    }
    
    func test212FahrenheitIs100Celsius() {
        // GIVEN
        let input = 212.0
        
        // WHEN
        let celsius = sut.convertToCelsius(fahrenheit: input)
        
        // THEN
        XCTAssertEqual(celsius, 100, accuracy: 0.000001)
    }

}
