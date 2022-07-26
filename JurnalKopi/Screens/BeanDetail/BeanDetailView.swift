//
//  BeanDetailView.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 26/07/2022.
//

import SwiftUI

struct BeanDetailView: View {
    @State var name = ""
    @State var roasterName = ""
    @State var origin = ""
    @State var roastType = ""
    @State var process = ""
    @State var notes = ""

    var body: some View {
        Form {
            Section {
                TextField("Name", text: $name)
                TextField("Roaster", text: $roasterName)
                TextField("Origin", text: $origin)
            }
            Section("About") {
                TextField("Roast Type", text: $roastType)
                TextField("Process", text: $process)
            }
            Section("Notes") {
                TextEditor(text: $notes)
            }
        }
    }
}

struct BeanDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BeanDetailView()
    }
}
