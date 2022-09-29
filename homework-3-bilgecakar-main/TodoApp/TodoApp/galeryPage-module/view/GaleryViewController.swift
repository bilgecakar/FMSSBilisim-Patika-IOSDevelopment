//
//  GaleryViewController.swift
//  TodoApp
//
//  Created by Bilge Çakar on 25.09.2022.
//

import UIKit
import Kingfisher

class GaleryViewController: UIViewController {
    
    @IBOutlet weak var galeryCollectionView: UICollectionView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    private let viewModel = GaleryViewModel()
    private var items: [GaleryCellViewModel] = []
    
    var screenSize: CGRect!
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Customize collectionview
        screenSize = UIScreen.main.bounds  //Represent app's screen size
        screenWidth = self.screenSize.size.width //Represent app's screen width
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout() //Use UICollectionViewFlowLayout in order to customize collectionview
        layout.sectionInset = UIEdgeInsets(top: 5, left: 15, bottom: 5, right: 15) //Represenet distance between colletionview to superview
        layout.itemSize = CGSize(width: (screenWidth - 60 )/3, height: screenWidth*0.25) //Calculate hıw many cells to display
        layout.minimumInteritemSpacing = 10 //Represent distance between two cells
        layout.minimumLineSpacing = 10 //Represent distance between two row
        galeryCollectionView.collectionViewLayout = layout //Add design on collectionview
        
        galeryCollectionView.delegate = self
        galeryCollectionView.dataSource = self
    
        viewModel.delegate = self
        viewModel.didViewLoad()
        
        registerCell()
    
        //When loading images, display activity indicator
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
    }
    
    //Register cell
    private func registerCell() {
        galeryCollectionView.register(UINib(nibName: String(describing: GaleryCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: GaleryCollectionViewCell.self))
    }
    
}

extension GaleryViewController: GaleryViewModelProtocol {
    func didCellItemFetch(_ items: [GaleryCellViewModel]) {
        self.items = items
        
        DispatchQueue.main.async {
            self.galeryCollectionView.reloadData()
        }
    }
    
    func showEmptyView() {
        //TODO
    }
    
    func hideEmptyView() {
        //TODO
    }
    
}

extension GaleryViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: GaleryCollectionViewCell.self), for: indexPath) as! GaleryCollectionViewCell
        DispatchQueue.main.async {
            cell.galeryImageView.kf.setImage(with: URL(string: "\( self.items[indexPath.row].url)"))
            //When loading is finish, activity indicator is hidden
            self.activityIndicator.isHidden = true
            self.activityIndicator.stopAnimating()
        }
        return cell
    }
                         
                         
}
