//
//  WKWebView+Extensions.swift
//  hacker-news-app
//
//  Created by Victor Chirino on 27/06/2022.
//

import Foundation
import WebKit


extension WKWebView {
    static func pageNotFoundView() -> WKWebView {
        let wk = WKWebView()
        wk.loadHTMLString("<html><body><h1>Page not found!</h1></body></html>", baseURL: nil)
        return wk
    }
}
