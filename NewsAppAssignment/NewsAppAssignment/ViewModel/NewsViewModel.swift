//
//  NewsViewModel.swift
//  NewsAppAssignment
//
//  Created by Prashant  Badrinath on 6/8/20.
//  Copyright © 2020 Prashant  Badrinath. All rights reserved.
//

import Foundation

protocol NewsArticleProtocol {
    func getNews(completion: @escaping ([Article?]?,Error?) -> ())
}

class ViewModel: NewsArticleProtocol {
    var data: [Article?] = []

    var articleURL2Id : [String: Int] = [:]

    let endPoint = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=f1f4a790b8064b4f85b86285780e71e5"
    
    func getNews(completion: @escaping ([Article?]?,Error?) -> ()) {
        ApiHandler.sharedInstance.getData(urlString: endPoint) { (response, error) in
            if let newsResponse = response {
                self.data = newsResponse.articles
                completion(self.data, nil)
            } else {
                completion(nil, error)
            }
        }
    }
    
}


