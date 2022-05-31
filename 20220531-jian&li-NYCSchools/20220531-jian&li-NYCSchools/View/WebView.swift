//
//  WebView.swift
//  20220531-jian&li-NYCSchools
//
//  Created by jianli on 5/31/22.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
 
    var url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
