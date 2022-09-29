//
//  NewsCollectionViewCell.swift
//  NewsApp
//
//  Created by Bilge Çakar on 16.09.2022.
//

import UIKit

class NewsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellBackgroundView: UIView! {
        didSet {
            cellBackgroundView.layer.cornerRadius = 15
        }
    }
    @IBOutlet weak var newsImageView: UIImageView! {
        didSet {
            newsImageView.layer.cornerRadius = 15
            newsImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        }
    }
    @IBOutlet weak var categoryNameLabel: UILabel!
    @IBOutlet weak var newsTitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
