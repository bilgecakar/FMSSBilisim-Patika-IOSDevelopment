//
//  NewsDetailViewController.swift
//  NewsApp
//
//  Created by Bilge Çakar on 18.09.2022.
//

import UIKit

class NewsDetailViewController: UIViewController {
    
    
    @IBOutlet weak var backgroundView: UIView! {
        didSet {
            backgroundView.layer.cornerRadius = 30
            backgroundView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        }
    }
    @IBOutlet weak var newsImageView: UIImageView! {
        didSet {
            newsImageView.layer.cornerRadius = 30
            newsImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        }
    }
    @IBOutlet weak var writerImageview: UIImageView! {
        didSet {
            writerImageview.layer.cornerRadius = writerImageview.layer.frame.size.width / 2
        }
    }
    @IBOutlet weak var categoryNameLabel: UILabel!              //Represent news category name
    @IBOutlet weak var writerNameLabel: UILabel!                //Represent news writer name
    @IBOutlet weak var newsDateLabel: UILabel!                  //Represent date when publish news
    @IBOutlet weak var newsDescriptionLabel: UILabel! {         //Represent news  description
        didSet {
            newsDescriptionLabel.textAlignment = .justified
        }
    }
    
    var incomingData: News?    //Represent incoming data from Hompepage
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //For back button in navigation bar
        let label = UILabel(frame: CGRect(x:0, y:0, width:400, height:50))
        label.backgroundColor = .clear
        label.numberOfLines = 0
        label.textAlignment = .left
        label.font = UIFont(name: "Lora", size: 16)
        label.textColor = .white
        label.text = incomingData?.newsTitle
        self.navigationItem.titleView = label
        
        self.newsImageView.image = UIImage(named: incomingData!.newsImage)
        self.writerNameLabel.text = "by  \(incomingData!.newsWriter)"
        self.categoryNameLabel.text = incomingData?.newsCategory
        self.newsDateLabel.text = incomingData?.newsDate
        self.newsDescriptionLabel.text = incomingData?.newsDescription
    }
    
    @IBAction func readMorePressed(_ sender: Any) {
        
        //Oepn webview
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let webViewCotroller = storyboard.instantiateViewController(withIdentifier: "webPageViewController") as! WebViewController
        //Send new url to WebviewContoller
        webViewCotroller.newsUl = incomingData?.newsUrl
        present(webViewCotroller, animated: true, completion: nil)
    }
}
