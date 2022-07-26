//
//  ProcessRowView.swift
//  JurnalKopi
//
//  Created by AD0502-ADE-MB-1 on 17/05/2022.
//

import SwiftUI

struct ProcessRowView: View {
    let title: String
    let detail: String

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.system(size: 12, weight: .regular))
                .foregroundColor(.secondary)
            Text(detail)
                .font(.system(size: 15, weight: .medium))

        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
    }
}

struct ProcessRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProcessRowView(title: "Methods", detail: "V60")
    }
}
