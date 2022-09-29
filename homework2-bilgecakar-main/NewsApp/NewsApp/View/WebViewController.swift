//
//  WebViewController.swift
//  NewsApp
//
//  Created by Bilge Çakar on 18.09.2022.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var myWebView: WKWebView!
    
    var newsUl: String?  //Represent news url string
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL.init(string: newsUl!) {
            let urlRequest = URLRequest.init(url: url)
            myWebView.load(urlRequest)
        }
    }
}
