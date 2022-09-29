//
//  Extension.swift
//  NewsApp
//
//  Created by Bilge Çakar on 16.09.2022.
//

import Foundation
import UIKit

//Customize navigationbar
extension UINavigationBar {
    
    //Change navigationbar title's color and font
    func customNavigationBar() {
        self.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont(name: "Lora-Semibold", size: 20)!,
            NSAttributedString.Key.foregroundColor:UIColor(named: "WhiteTextColor")!
        ]
    }
}
