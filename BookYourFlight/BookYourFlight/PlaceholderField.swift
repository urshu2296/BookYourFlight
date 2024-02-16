//
//  PlaceholderField.swift
//  Combine Practise
//
//  Created by MAC on 05/02/24.
//

import SwiftUI

struct PlaceholderField: View {
    
    @State var userTextField = ""
    var placeHolderText: String
    
    var body: some View {
        TextField("", text: $userTextField,
                  prompt: Text(placeHolderText)
            .foregroundColor(.gray)
        )
        .padding()
        .frame(height: 40)
         .background(.white)
         .cornerRadius(12)
        
    }
    
    
}

#Preview {
    PlaceholderField( placeHolderText: "User")
}
