//
//  WKWebView.swift
//  NewsAppAssignment
//
//  Created by Prashant  Badrinath on 6/9/20.
//  Copyright © 2020 Prashant  Badrinath. All rights reserved.
//

import Foundation
import WebKit

class MyWkWebView: WKWebView, WKNavigationDelegate {
    
  
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
    }
    
    func webViewWebContentProcessDidTerminate(_ webView: WKWebView) {
        
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        
    }
}

