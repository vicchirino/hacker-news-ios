//
//  Webview.swift
//  hacker-news-app
//
//  Created by Victor Chirino on 27/06/2022.
//

import Foundation
import SwiftUI
import WebKit


struct Webview: UIViewRepresentable {
    
    var url: String
    
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else {
            return WKWebView.pageNotFoundView()
        }
        let request = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(request)
        return wkWebView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: self.url) else {
            return
        }
        uiView.scrollView.contentInset = .zero
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
