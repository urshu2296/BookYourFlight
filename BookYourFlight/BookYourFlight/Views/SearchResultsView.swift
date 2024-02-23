//
//  SearchResultsView.swift
//  BookYourFlight
//
//  Created by MAC on 12/02/24.
//

import SwiftUI

struct SearchResultsView: View {
    
    @EnvironmentObject var viewM: Model
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            GifImage(url: (URL(string: "https://ugokawaii.com/wp-content/uploads/2023/04/plane.gif")))
                .frame(height: 300)
            titleView
            stationView
            dateView
            
        }
    }
    
    var titleView: some View {
        VStack{
            Text("Keep your seatbelt fastened!")
                .font(.subheadline)
                .fontWeight(.bold)
            Text("Loading Best Fares...")
                .font(.body)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
        }
    }
    
    var stationView: some View {
        HStack(alignment: .bottom, spacing: 20) {
            Text(viewM.bookingVM.pickUpStation)
                .foregroundStyle(
                    .black)
            Image("rightDirection").resizable().frame(width: 20, height: 20)
            Text(viewM.bookingVM.dropStation)
                .foregroundStyle(
                    .black)
                .multilineTextAlignment(.trailing)
        }
        
    }
    
    var dateView: some View {
        Text("\(Helper.formatDate(viewM.bookingVM.pickdate)) - \(viewM.bookingVM.passengersCount) Passengers")
            .font(.body)
            .fontWeight(.bold)
            .foregroundStyle(.gray)
    }
}

#Preview {
    SearchResultsView()
}
