//
//  Brew.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 05/04/2022.
//

import Foundation

class Brew {
    var coffeeWeight: Int
    var brewRatio: Int
    var waterWeight: Int
    
    internal init(
        coffeeWeight: Int = 20,
        brewRatio: Int = 15,
        waterWeight: Int = 300
    ) {
        self.coffeeWeight = coffeeWeight
        self.brewRatio = brewRatio
        self.waterWeight = waterWeight
    }
}

extension Brew {
    func updateCoffeeWeight(_ weight: Int) {
        self.coffeeWeight = weight
        self.waterWeight = weight * brewRatio
    }
    
    func updateBrewRatio(_ ratio: Int) {
        self.brewRatio = ratio
        self.waterWeight = coffeeWeight * brewRatio
    }
    
    func updateWaterWeight(_ water: Int) {
        self.waterWeight = water
        guard water != 0 else { return }
        self.coffeeWeight = waterWeight / brewRatio
    }
}
