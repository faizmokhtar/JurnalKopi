//
//  ContentView.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 05/04/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var beansWeight = ""
    @State private var brewRatio = ""
    @State private var waterWeight = ""
    
    var body: some View {
        ScrollView {
            VStack {
                VStack(alignment: .trailing) {
                    Text("Coffee beans")
                        .font(.system(size: 18, weight: .semibold))
                    HStack(alignment: .bottom) {
                        TextField("20", text: $beansWeight)
                            .font(.system(size: 60, weight: .medium))
                            .multilineTextAlignment(.trailing)
                            .accentColor(.clear)
                            .keyboardType(.decimalPad)
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
                        .font(.system(size: 18, weight: .semibold))
                    HStack(alignment: .center) {
                        Spacer()
                        Text("1")
                            .font(.system(size: 60, weight: .medium))
                        Text(":")
                            .font(.system(size: 60, weight: .medium))
                        TextField("15", text: $brewRatio)
                            .font(.system(size: 60, weight: .medium))
                            .multilineTextAlignment(.trailing)
                            .accentColor(.clear)
                            .keyboardType(.decimalPad)
                            .fixedSize()
                    }
                }
                .padding()
                Divider()
                VStack(alignment: .trailing) {
                    Text("Water")
                        .font(.system(size: 18, weight: .semibold))
                    HStack(alignment: .bottom) {
                        TextField("300", text: $waterWeight)
                            .font(.system(size: 60, weight: .medium))
                            .multilineTextAlignment(.trailing)
                            .accentColor(.clear)
                            .keyboardType(.decimalPad)
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
        ContentView()
    }
}
