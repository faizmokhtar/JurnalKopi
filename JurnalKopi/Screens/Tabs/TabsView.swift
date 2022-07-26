//
//  TabsView.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 05/04/2022.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            BrewListView()
                .tabItem {
                    Image(systemName: "heart.text.square")
                    Text("Brews")
                }
            BeanListView()
                .tabItem {
                    Image(systemName: "heart.text.square")
                    Text("Beans")
                }
            BrewCalculatorView()
                .tabItem {
                    Image(systemName: "scalemass.fill")
                    Text("Calculate")
                }
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
