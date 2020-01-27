//
//  Converter.swift
//  First
//
//  Created by Sam LoBue on 1/26/20.
//  Copyright © 2020 DjangoEarnhardt. All rights reserved.
//

import Foundation

struct Converter {
    func convertToCelsius(fahrenheit: Double) -> Double {
        let fahrenheit = Measurement(value: fahrenheit, unit: UnitTemperature.fahrenheit)
        let celsius = fahrenheit.converted(to: .celsius)
        return celsius.value
    }
}
