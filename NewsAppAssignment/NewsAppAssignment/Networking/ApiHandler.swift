//
//  APIHandler.swift
//  NewsAppAssignment
//
//  Created by Prashant  Badrinath on 6/8/20.
//  Copyright © 2020 Prashant  Badrinath. All rights reserved.
//

import Foundation

typealias completionHandler = (HeadlinesResponse?, Error?) -> ()

class ApiHandler : NSObject{

    static let sharedInstance = ApiHandler()
    
    //Fetching News Data
    func getData(urlString: String, completion: @escaping completionHandler) {
        
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!) { (data, response, error) in

            if error ==  nil {
                do {
                    let decodedData = try JSONDecoder().decode(HeadlinesResponse.self, from: data!)
                    completion(decodedData,nil)
                } catch {
                    print(error)
                    completion(nil, error)
                }
            }
        }.resume()
    }
}
