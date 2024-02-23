//
//  SecureTextField.swift
//  BookYourFlight
//
//  Created by MAC on 05/02/24.
//

import SwiftUI

struct SecureTextFieldView: View {
    @State var password = ""
    var placeHolderText: String
    
    var body: some View {
        SecureField("Password", text: $password,
                    prompt: Text(placeHolderText)
              .foregroundColor(.gray)
          ) .padding()
            .frame(height: 40)
             .background(.white)
             .cornerRadius(12)
        
    }
}

#Preview {
    SecureTextFieldView( placeHolderText: "Password")
}
