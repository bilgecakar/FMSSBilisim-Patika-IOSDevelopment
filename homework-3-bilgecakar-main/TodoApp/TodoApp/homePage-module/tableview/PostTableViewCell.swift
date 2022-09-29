//
//  PostTableViewCell.swift
//  TodoApp
//
//  Created by Bilge Çakar on 25.09.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet private(set) weak var postTitleLabel: UILabel!
    @IBOutlet private(set) weak var postBodyLabel: UILabel!
    //Customize tablview
    @IBOutlet weak var backView: UIView! {
        didSet {
            //Added corner radius on cell
            backView.clipsToBounds = false
            backView.layer.cornerRadius = 15
            backView.backgroundColor = UIColor.white
            backView.layer.shouldRasterize = true
            backView.layer.rasterizationScale = UIScreen.main.scale
            //Added cell shadow
            backView.layer.shadowColor = UIColor.black.cgColor
            backView.layer.shadowOffset = CGSize(width: 0.5 , height: 2.0) //Cell shadow's apperency
            backView.layer.shadowOpacity = 0.1
            backView.layer.shadowRadius = 8 //Shadow's alpha
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
