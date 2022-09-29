//
//  GaleryViewModel.swift
//  TodoApp
//
//  Created by Bilge Çakar on 25.09.2022.
//

import Foundation


protocol GaleryViewModelProtocol: AnyObject  {
    func didCellItemFetch(_ items: [GaleryCellViewModel])
    func showEmptyView()
    func hideEmptyView()
}

class GaleryViewModel {
    
    private let model = GaleryModel()
    
    weak var delegate: GaleryViewModelProtocol?
    
    init() {
        model.delegate = self
    }
    
    func didViewLoad() {
        model.fetchData()
    }
    
}

private extension GaleryViewModel {
    @discardableResult
    func makeViewPasedModel(_ galery: [Galery]) -> [GaleryCellViewModel] {
        return galery.map{ .init(url: $0.url)
            
        }
    }
}

extension GaleryViewModel: GaleryModelProtocol {
    func didDataFetch(_ isSucces: Bool) {
        if isSucces {
            let galeries = model.galeries
            let cellModels = makeViewPasedModel(galeries)
            delegate?.didCellItemFetch(cellModels)
            delegate?.hideEmptyView()
        } else {
            delegate?.showEmptyView()
        }
    }
}
