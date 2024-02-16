//
//  DashboardView.swift
//  Combine Practise
//
//  Created by MAC on 06/02/24.
//

import SwiftUI

struct DashboardView: View {
    
    @EnvironmentObject var viewM: Model
    @State private var way = 0
    
    var body: some View {
        NavigationView {
            VStack( alignment: .center) {
                header
            } .toolbar {
                ToolbarItem(placement: .topBarLeading, content: {
                    IconImageView(imagename: "hamburger", completion: {
                        
                    })
                })
                
                ToolbarItem(placement: .topBarTrailing, content: {
                    IconImageView(imagename: "bell", completion: {
                        
                    })
                })
                
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    Button(action: {}, label: {
                        Text("U")
                            .frame(width: 40, height: 40)
                            .background(.blue)
                            .clipShape(Circle())
                    }).tint(.black)
                })
            }.navigationTitle("IndiGo").navigationBarTitleDisplayMode(.inline)
            
            
        }.navigationBarHidden(true)
    }
    
    var header: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Book Flight")
                .font(.title)
                .fontWeight(.bold)
            segmentView
            subOptionView
            passengerV
            Spacer(minLength: 40)
            searchButton
            Spacer()
        }.padding()
    }
    
    var segmentView: some View {
        
        VStack {
            Picker("What is your favorite color?", selection: $way) {
                Text("ONE WAY").tag(0)
                Text("ROUND TRIP").tag(1)
                Text("MULTICITY").tag(2)
                
            }
            .pickerStyle(.segmented)
        }
    }
    
    var subOptionView: some View {
        VStack (alignment: .leading,spacing: 30){
            VStack {
                citySelectionV
                OptionView(fromCity: viewM.bookingVM.pickUpStation, toCity: viewM.bookingVM.dropStation)
                timeTableV
                DatePickerView()
            }
        }
    }
    
    var citySelectionV: some View {
        TwoTitleHeader(leftTitle: "FROM", rightTitle: "TO")
    }
    
    var timeTableV: some View {
        TwoTitleHeader(leftTitle: "DEPARTURE", rightTitle: "RETURN")
    }
    
    var passengerV: some View {
        
        VStack {
            TwoTitleHeader(leftTitle: "PASSENGERS", rightTitle: "PAY IN")
            HStack {
                TextField("", text: $viewM.bookingVM.passengersCount)
                Spacer()
                TextField("", text: $viewM.bookingVM.payIn)
                    .multilineTextAlignment(.trailing)
            }
            TwoTitleHeader(leftTitle: "Promo Code", rightTitle: "")
            TextField("", text: $viewM.bookingVM.promoCode)
        }
        
    }
    
    var searchButton: some View {
        NavigationLink(destination: SearchResultsView(), label: {
            HStack {
                Text("Search Flight")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                Image("right-arrow")
                    .resizable()
                    .frame(width: 15, height: 15)
                
            }.frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color(UIColor(red: 0, green: 0, blue: 139/255, alpha: 1)))
                .cornerRadius(10)
            
        })
    }
    
}

#Preview {
    DashboardView()
}
