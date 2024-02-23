//
//  IconImageView.swift
//  Combine Practise
//
//  Created by MAC on 06/02/24.
//

import SwiftUI

struct IconImageView: View {
    
    var imagename: String
    var completion: (()->Void)
    
    var body: some View {
        Button(action: completion, label: {
            imageV
        }).tint(.black)        
    }
    
    var imageV : some View {
        Image(imagename).resizable().frame(width: 20, height: 20)
    }
}

#Preview {
    IconImageView(imagename: "bell", completion: {})
}
