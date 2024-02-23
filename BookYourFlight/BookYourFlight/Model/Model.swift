//
//  Model.swift
//  BookYourFlight
//
//  Created by MAC on 06/02/24.
//
import SwiftUI
import Foundation

class Model: ObservableObject {
   
    @Published var bookingVM = BookingModel(passengersCount: "2", payIn: "INR")
    @Published var userTextField = ""
    @Published var passwordTextField = ""
    @Published var areYouGoingToSecondView = false

}

class BookingModel {
    @Published var pickUpStation:String = "Patna"
    @Published var dropStation:String = "Indore"
    @Published var passengersCount:String = "0"
    @Published var payIn:String = "INR"
    @Published var promoCode:String = "CTY256"
    @Published var pickdate:Date = Date()
    @Published var returndate:Date = Date()
    
    init(passengersCount: String, payIn: String) {
        self.passengersCount = passengersCount
        self.payIn = payIn
    }
}


