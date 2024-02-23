//
//  TwoTitleHeader.swift
//  BookYourFlight
//
//  Created by MAC on 06/02/24.
//

import SwiftUI

struct TwoTitleHeader: View {
    var leftTitle: String
    var rightTitle: String

    var body: some View {
         HStack {
            Text(leftTitle)
                 .font(.subheadline)
                 .fontWeight(.bold)
            Spacer()
            Text(rightTitle)
                 .font(.subheadline)
                 .fontWeight(.bold)
         }
            .foregroundColor(.gray)

    }
}

#Preview {
    TwoTitleHeader(leftTitle: "y", rightTitle: "u")
}
