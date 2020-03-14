//
//  WebView.swift
//  H4X0R News
//
//  Created by Faisal Babkoor on 3/13/20.
//  Copyright © 2020 Faisal Babkoor. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safeUrl = urlString else { return }
        guard let url = URL(string: safeUrl) else { return }
        let request = URLRequest(url: url)
        uiView.load(request)
        
    }
}

