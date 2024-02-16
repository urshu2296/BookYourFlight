//
//  OptionView.swift
//  Combine Practise
//
//  Created by MAC on 06/02/24.
//

import SwiftUI

struct OptionView: View {
    
    var fromCity: String
    var toCity: String
    var body: some View {
        HStack(alignment: .bottom) {
            Text(fromCity)
                .foregroundStyle(
                    .black.opacity(0.6))
            Spacer()
            Image("transfer").resizable().frame(width: 20, height: 20)
            Spacer()
            Text(toCity)
                .foregroundStyle(
                    .black.opacity(0.6))
                .multilineTextAlignment(.trailing)
        }
    }
}

