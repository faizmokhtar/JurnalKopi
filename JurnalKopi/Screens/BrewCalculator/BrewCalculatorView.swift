//
//  ContentView.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 05/04/2022.
//

import SwiftUI

struct BrewCalculatorView: View {
    @State private var beansWeight = ""
    @State private var brewRatio = ""
    
    @ObservedObject var viewModel = BrewCalculatorViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                VStack(alignment: .trailing) {
                    Text("Coffee beans")
                        .font(.system(size: 18, weight: .semibold, design: .serif))
                    HStack(alignment: .bottom) {
                        TextField(viewModel.beansWeight, text: $beansWeight)
                            .font(.system(size: 60, weight: .medium))
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.numberPad)
                            .onChange(of: beansWeight) { newValue in
                                viewModel.updateBeans(weight: newValue)
                            }
                        Text("g")
                            .font(.system(size: 30, weight: .medium))
                            .foregroundColor(Color("Color.Primary"))
                            .padding(.bottom, 10)
                    }
                }
                .padding()
                Divider()
                VStack(alignment: .trailing) {
                    Text("Brew ratio")
                        .font(.system(size: 18, weight: .semibold, design: .serif))
                    HStack(alignment: .center) {
                        Spacer()
                        Text("1")
                            .font(.system(size: 60, weight: .medium))
                        Text(":")
                            .font(.system(size: 60, weight: .medium))
                        TextField(viewModel.brewRatio, text: $brewRatio)
                            .font(.system(size: 60, weight: .medium))
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.numberPad)
                            .fixedSize()
                            .onChange(of: brewRatio) { newValue in
                                viewModel.updateBrewRatio(ratio: newValue)
                            }
                    }
                }
                .padding()
                Divider()
                VStack(alignment: .trailing) {
                    Text("Water")
                        .font(.system(size: 18, weight: .semibold, design: .serif))
                    HStack(alignment: .bottom) {
                        Spacer()
                        Text(viewModel.waterWeight)
                            .font(.system(size: 60, weight: .medium))
                        Text("g")
                            .font(.system(size: 30, weight: .medium))
                            .foregroundColor(Color("Color.Primary"))
                            .padding(.bottom, 10)
                    }
                }
                .padding()
                Divider()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BrewCalculatorView()
    }
}
