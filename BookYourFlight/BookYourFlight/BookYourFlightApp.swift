//
//  BookYourFlightApp.swift
//  BookYourFlight
//
//  Created by MAC on 16/02/24.
//

import SwiftUI

@main
struct BookYourFlightApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(Model())
        }
    }
}
