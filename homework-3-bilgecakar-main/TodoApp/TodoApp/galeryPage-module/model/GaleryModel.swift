//
//  GaleryModel.swift
//  TodoApp
//
//  Created by Bilge Çakar on 25.09.2022.
//

import Foundation

protocol GaleryModelProtocol: AnyObject {
    func didDataFetch(_ isSucces: Bool)
}

class GaleryModel {
    
    weak var delegate: GaleryModelProtocol?
    
    var galeries: [Galery] = []
    
    func fetchData() {
        guard let url = URL.init(string: "https://jsonplaceholder.typicode.com/photos") else {
            delegate?.didDataFetch(false)
            return
        }
        var request: URLRequest = .init(url: url)
        request.httpMethod = "GET"
        
    
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            
            guard let self = self else { return }
            
            guard
                error == nil
            else {
                self.delegate?.didDataFetch(false)
                return
            }
            
            guard let data = data else {
                self.delegate?.didDataFetch(false)
                return
            }
            
            do {
                let jsonDecoder = JSONDecoder()
                self.galeries = try jsonDecoder.decode([Galery].self, from: data)
                print(self.galeries)
                self.delegate?.didDataFetch(true)
            } catch  {
                self.delegate?.didDataFetch(false)
            }

        }
        
        task.resume()
      
    }
}
