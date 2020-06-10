//
//  WebView.swift
//  NewsAppAssignment
//
//  Created by Prashant  Badrinath on 6/9/20.
//  Copyright © 2020 Prashant  Badrinath. All rights reserved.
//

import SwiftUI
import WebKit
  
struct URLWebView : UIViewRepresentable {
      
    //Coordinator to connect SwiftUI to WKWebView delegate functions.
    let request: URLRequest
      
    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
      
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
      
}
  
