//
//  BrewView.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 25/07/2022.
//

import SwiftUI

struct BrewView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Halu Banana")
                .font(.system(size: 20, weight: .bold, design: .serif))
                .padding(.bottom, 5)
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 10) {
                    ProcessRowView(title: "Methods", detail: "V60")
                    ProcessRowView(title: "Temperature", detail: "95℃")
                    ProcessRowView(title: "Avg. Rating", detail: "4/5")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                VStack(alignment: .leading, spacing: 10) {
                    ProcessRowView(title: "Brew ratio", detail: "1:18")
                    ProcessRowView(title: "Brew weight", detail: "300 g")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
        }.padding(.vertical, 10)
    }
}

struct BrewView_Previews: PreviewProvider {
    static var previews: some View {
        BrewView()
    }
}
