//
//  PostsVewModel.swift
//  TodoApp
//
//  Created by Bilge Çakar on 25.09.2022.
//

import Foundation

protocol PostsViewModelProtocol: AnyObject  {
    func didCellItemFetch(_ items: [PostCellViewModel])
    func showEmptyView()
    func hideEmptyView()
}

class PostsViewModel {
    
    private let model = PostModel()
    
    weak var delegate: PostsViewModelProtocol?
    
    init() {
        model.delegate = self
    }
    
    func didViewLoad() {
        model.fetchData()
    }
    
}

private extension PostsViewModel {
    @discardableResult
    func makeViewPasedModel(_ post: [Post]) -> [PostCellViewModel] {
        return post.map{ .init(title: $0.title, body: $0.body)
            
        }
    }
}

extension PostsViewModel: PostModelProtocol {
    func didDataFetch(_ isSucces: Bool) {
        if isSucces {
            let posts = model.posts
            let cellModels = makeViewPasedModel(posts)
            delegate?.didCellItemFetch(cellModels)
            delegate?.hideEmptyView()
        } else {
            delegate?.showEmptyView()
        }
        
        
        
    }
}
