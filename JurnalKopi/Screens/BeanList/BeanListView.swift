//
//  BeanListView.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 25/07/2022.
//

import SwiftUI

struct BeanListView: View {
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                NavigationLink {
                    BeanDetailView()
                } label: {
                    BeanView()
                }
            }
            .navigationTitle(Text("Beans"))
        }
    }
}

struct BeanListView_Previews: PreviewProvider {
    static var previews: some View {
        BeanListView()
    }
}
