//
//  PostEntity.swift
//  TodoApp
//
//  Created by Bilge Çakar on 25.09.2022.
//

import Foundation

struct PostCellViewModel {
    
    var title: String?
    var body: String?
}

struct Post: Decodable {
    var id: Int
    var title: String
    var body: String
}
