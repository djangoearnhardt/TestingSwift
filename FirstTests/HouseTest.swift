//
//  HouseTest.swift
//  FirstTests
//
//  Created by Mochi Holder on 2/23/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import XCTest
@testable import First

class HouseTest: XCTestCase {
    
    func test4Bed2BathHouse_Fits3Bed2BathRequirements() {
        // given
        let house = House(bedrooms: 4, bathrooms: 2)
        let desiredBedrooms = 3
        let desiredBathrooms = 2
        
        // when
        let suitability = house.checkSuitability(desiredBedrooms: desiredBedrooms, desireBathrooms: desiredBathrooms)
    
        // then
        XCTAssert(suitability)
    }
}
