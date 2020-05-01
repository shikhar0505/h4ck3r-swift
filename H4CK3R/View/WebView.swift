//
//  WebView.swift
//  H4CK3R
//
//  Created by Shikhar Kumar on 2/2/20.
//  Copyright © 2020 Shikhar Kumar. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeUrlString = urlString {
            if let safeUrl = URL(string: safeUrlString) {
                let request = URLRequest(url: safeUrl)
                uiView.load(request)
            }
        }
    }
}
