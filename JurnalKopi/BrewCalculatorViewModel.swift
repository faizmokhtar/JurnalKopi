//
//  BrewCalculatorViewModel.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 05/04/2022.
//

import Foundation

class BrewCalculatorViewModel: ObservableObject {
    @Published var beansWeight: String
    @Published var brewRatio: String
    @Published var waterWeight: String
    
    private let brew: Brew
    
    init(brew: Brew = Brew()) {
        self.brew = brew
        self.beansWeight = String(brew.coffeeWeight)
        self.brewRatio = String(brew.brewRatio)
        self.waterWeight = String(brew.waterWeight)
    }
}

extension BrewCalculatorViewModel {
    func updateBeans(weight: String) {
        guard let weight = Int(weight) else { return }
        brew.updateCoffeeWeight(weight)
        self.waterWeight = String(brew.waterWeight)
    }

    func updateBrewRatio(ratio: String) {
        guard let ratio = Int(ratio) else { return }
        brew.updateBrewRatio(ratio)
        self.waterWeight = String(brew.waterWeight)
    }
    
    func updateWater(weight: String) {
        guard let weight = Int(weight), weight >= 100 else { return }
        brew.updateWaterWeight(weight)
        self.beansWeight = String(brew.coffeeWeight)
    }
}
