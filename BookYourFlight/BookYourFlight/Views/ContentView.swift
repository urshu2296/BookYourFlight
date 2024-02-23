//
//  ContentView.swift
//  Combine Practise
//
//  Created by MAC on 05/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var userTextField = ""
    @State var passwordTextField = ""
    @State var areYouGoingToSecondView = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                topView
            }
        }.navigationBarHidden(true)
    }
    
    var topView: some View {
        ZStack {
            Image("window").resizable().ignoresSafeArea()
            VStack {
                textView
                Spacer()
                innerView
                buttonV
                
            }
            .padding()
        }
    }
    
    var textView: some View {
        VStack {
            
            Text("İnðiGo")
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("Welcome 6€ partner ")
                .foregroundColor(.white)
                .font(.subheadline)
                .fontWeight(.semibold)
        }
        
    }
    
    var innerView: some View {
        VStack {
            PlaceholderField(userTextField: userTextField, placeHolderText: "User Id")
            SecureTextFieldView(password: passwordTextField, placeHolderText: "Password")
            
            
        }.background(.white)
            .cornerRadius(8)
        
    }
    
    var buttonV: some View {
        NavigationLink(destination: DashboardView(), label: {
            Text("Login")
        }).frame( height: 40)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .foregroundColor(.white)
            .font(.caption)
            .fontWeight(.semibold)
        
    }
    
}

#Preview {
    ContentView()
}
