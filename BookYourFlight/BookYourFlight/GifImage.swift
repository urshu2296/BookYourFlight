//
//  GifLoad.swift
//  BookYourFlight
//
//  Created by MAC on 12/02/24.
//

import Foundation
import SwiftUI
import WebKit

// UIViewRepresentable is a protocol used to wrap a UIKit component and use it within your SwiftUI views.
struct GifImage: UIViewRepresentable {
    private let url: URL?

    init(url: URL?) {
        self.url = url
    }

   // This function is called when SwiftUI needs to create the UIKit view represented by your UIViewRepresentable.
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let url = url {
            webView.load(URLRequest(url: url))
            webView.scrollView.isScrollEnabled = false
            return webView

        }
        return webView
    }

    // This function is called whenever the SwiftUI framework detects changes to the state or properties of your UIViewRepresentable.
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: url ?? URL(fileURLWithPath: "")))
    }
}
