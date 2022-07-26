//
//  BeanView.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 25/07/2022.
//

import SwiftUI

struct BeanView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Halu Banana")
                .font(.system(size: 20, weight: .bold, design: .serif))
            Text("Space Roastery")
                .font(.system(size: 14, weight: .regular, design: .default))
                .foregroundColor(Color.secondary)
                .padding(.bottom, 4)
            HStack(alignment: .top, spacing: 30) {
                VStack(alignment: .leading, spacing: 10) {
                    ProcessRowView(title: "Type", detail: "Single Origin")
                    ProcessRowView(title: "Roast Profile", detail: "Medium")
                }
                VStack(alignment: .leading, spacing: 10) {
                    ProcessRowView(title: "Processed", detail: "Washed")
                    ProcessRowView(title: "Roasted on", detail: "24 July 2022")
                }
            }
        }.padding(.vertical, 10)
    }
}

struct BeanView_Previews: PreviewProvider {
    static var previews: some View {
        BeanView()
    }
}
