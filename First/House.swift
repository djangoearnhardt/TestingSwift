//
//  House.swift
//  First
//
//  Created by Mochi Holder on 2/23/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import Foundation

struct House {
    var bedrooms: Int
    var bathrooms: Int
    var cost: Int
    
    init(bedrooms: Int, bathrooms: Int) {
        self.bedrooms = bedrooms
        self.bathrooms = bathrooms
        self.cost = bedrooms * bathrooms * 50_000
    }
    
    func checkSuitability(desiredBedrooms: Int, desireBathrooms: Int) -> Bool {
        if bedrooms >= desiredBedrooms && bathrooms >= desireBathrooms {
            return true
        } else {
            return false
        }
    }
}
