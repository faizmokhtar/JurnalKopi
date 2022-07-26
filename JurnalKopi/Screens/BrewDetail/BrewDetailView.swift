//
//  BrewDetailView.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 25/07/2022.
//

import SwiftUI

struct BrewDetailView: View {
    @State var beans = ""
    @State var grinder = ""
    @State var brew = ""
    @State var grindSettings = ""
    @State var coffeeGround = ""
    @State var water = ""
    @State var temperature = ""
    @State var notes = ""
    
    var body: some View {
        Form {
            Group {
                Picker("Beans", selection: $beans) {
                    Text("Halu Banana")
                }
                Picker("Grinder", selection: $grinder) {
                    Text("Timemore C2")
                }
                Picker("Brewer", selection: $brew) {
                    Text("Hario V60 01")
                }
            }
            Section("Brew Details") {
                TextField("Grind settings", text: $grindSettings)
                TextField("Coffee(g)", text: $coffeeGround)
                TextField("Water(g)", text: $water)
                TextField("Temperature(℃)", text: $temperature)
            }
            Section("Notes") {
                TextEditor(text: $notes)
            }
            .navigationTitle("Brew details")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        print("did tapped save!")
                    }
                }
            }
        }
    }
}

struct BrewDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BrewDetailView()
    }
}
