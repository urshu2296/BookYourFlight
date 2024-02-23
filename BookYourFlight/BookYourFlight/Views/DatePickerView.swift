//
//  DatePickerView.swift
//  BookYourFlight
//
//  Created by MAC on 08/02/24.
//
import SwiftUI
struct DatePickerView: View {

    @EnvironmentObject var viewM: Model

    var body: some View {
        HStack {
            DatePicker("Start Date", selection: $viewM.bookingVM.pickdate, displayedComponents: .date)
                .labelsHidden()
                .padding(.trailing, 20) // Add padding only to the trailing side of the first date picker
            
            Spacer() // Add a spacer to push the second date picker to the trailing edge
            
            DatePicker("End Date", selection: $viewM.bookingVM.returndate, displayedComponents: .date)
                .labelsHidden()
                .padding(.leading, 20) // Add padding only to the leading side of the second date picker
        }
    }
}

