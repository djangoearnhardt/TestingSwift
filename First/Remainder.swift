//
//  Remainder.swift
//  First
//
//  Created by Sam LoBue on 1/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import Foundation

struct Remainder {
    func divisionRemainder(of number: Int, dividedBy: Int) -> (quotient: Int, remainder: Int) {
        let quotient = number / dividedBy
        let remainder = number / dividedBy
        return (quotient, remainder)
    }
}
