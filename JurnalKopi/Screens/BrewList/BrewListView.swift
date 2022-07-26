//
//  BrewListView.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 05/04/2022.
//

import SwiftUI

struct BrewListView: View {
    var body: some View {
        NavigationView {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                NavigationLink {
                    BrewDetailView()
                } label: {
                    BrewView()
                }

            }
            .navigationTitle(Text("Brews"))
        }
    }
}

struct BrewListView_Previews: PreviewProvider {
    static var previews: some View {
        BrewListView()
    }
}
