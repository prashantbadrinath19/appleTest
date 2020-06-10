//
//  customCell.swift
//  NewsAppAssignment
//
//  Created by Prashant  Badrinath on 6/9/20.
//  Copyright © 2020 Prashant  Badrinath. All rights reserved.
//

import UIKit

protocol CustomCellProtocol {
    func setData(title : String, author: String, image: String)
}
class CustomCell: UICollectionViewCell, CustomCellProtocol {

    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsAuthor: UILabel!
    
    
    func setData(title : String, author: String, image: String){
        newsTitle.text = title
        newsAuthor.text = author
        
        let imgUrl = NSURL(string:image)! as URL
        newsImage.load(url: imgUrl)
    }
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
