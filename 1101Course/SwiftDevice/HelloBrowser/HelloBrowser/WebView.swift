//
//  WebView.swift
//  HelloBrowser
//
//  Created by Larry - 1024 on 2021/12/21.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

//struct WebView_Previews: PreviewProvider {
//    static var previews: some View {
//        WebView()
//    }
//}
