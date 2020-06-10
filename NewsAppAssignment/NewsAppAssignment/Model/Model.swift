//
//  Model.swift
//  NewsAppAssignment
//
//  Created by Prashant  Badrinath on 6/8/20.
//  Copyright © 2020 Prashant  Badrinath. All rights reserved.
//

import Foundation

struct HeadlinesResponse: Decodable {
    var status: String?
    var totalResults: Int?
    var articles: [Article?]
    
    private enum CodingKeys: String, CodingKey {
        case status
        case totalResults
        case articles
    }
}

struct Article: Codable {
    let source: Source
    let author: String
    let title: String
    let description: String
    let url: String
    let urlToImage: String
    let publishedAt: String
    let content: String
   }

struct Source: Codable {
    let id: String
    let name: String
}
