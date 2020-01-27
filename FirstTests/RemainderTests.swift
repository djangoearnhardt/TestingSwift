//
//  RemainderTests.swift
//  FirstTests
//
//  Created by Sam LoBue on 1/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import XCTest
@testable import First

class RemainderTests: XCTestCase {

    var sut: Remainder!
    
    override func setUp() {
        sut = Remainder()
        continueAfterFailure = false
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        sut = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
    
//    func testVerifyDivision(_ result: (quotient: Int, remainder: Int), expectedQuotient: Int, expectedRemainder: Int) {
        func testVerifyDivision() {

        // GIVEN
        let dividend = 10
        let divisor = 3

        // WHEN
        let result = sut.divisionRemainder(of: dividend, dividedBy: divisor)
        
        // THEN
        verifyDivision(result, expectedQuotient: 3, expectedRemainder: 2)

    }
}

extension RemainderTests {
    
    func verifyDivision(_ result: (quotient: Int, remainder: Int), expectedQuotient: Int, expectedRemainder: Int, file: StaticString = #file, line: UInt = #line) {
        XCTAssertEqual(result.quotient, expectedQuotient, file: file, line: line)
        XCTAssertEqual(result.remainder, expectedRemainder, file: file, line: line)
    }
}
