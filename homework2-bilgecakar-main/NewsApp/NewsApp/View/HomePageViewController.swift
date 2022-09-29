//
//  ViewController.swift
//  NewsApp
//
//  Created by Bilge Çakar on 16.09.2022.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var newsCollectionView: UICollectionView!
    private let newsCellIdentifier =  "NewsCollectionViewCell"
    let newsData = News.dummyData                //News data array,
    var onPassData: ((_ data: News) -> ())?      //Clouser for pass struct other viewcontroller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Customize navigation title with extension on UINavigationBar
        self.navigationController?.navigationBar.customNavigationBar()
        
        registerCell()
        
        //Delegations
        newsCollectionView.delegate = self
        newsCollectionView.dataSource = self
        
        //Customize collectionview 
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.size.width
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 5, left: 25, bottom: 5, right: 25)
        layout.itemSize = CGSize(width: (screenWidth - 65 )/2, height: screenWidth*0.5)
        layout.minimumInteritemSpacing = 15
        layout.minimumLineSpacing = 24
        newsCollectionView.collectionViewLayout = layout
    }
    
    //Register cell
    private func registerCell() {
        newsCollectionView.register(UINib(nibName: newsCellIdentifier, bundle: nil), forCellWithReuseIdentifier: newsCellIdentifier)
    }
}

extension HomePageViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        //Open news detail page
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newsDetailViewController = storyboard.instantiateViewController(withIdentifier: "newsDetailPage") as! NewsDetailViewController
        //Send News struct data
        newsDetailViewController.incomingData = newsData[indexPath.row]
        self.navigationController?.pushViewController(newsDetailViewController, animated: true)
    }
}

extension HomePageViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: newsCellIdentifier, for: indexPath) as! NewsCollectionViewCell
        cell.newsTitleLabel.text = newsData[indexPath.row].newsTitle
        cell.categoryNameLabel.text = newsData[indexPath.row].newsCategory
        cell.configureUI(newsData[indexPath.row].newsImage)
        return cell
    }
}

//Configure news collectionview
extension NewsCollectionViewCell {
    func configureUI(_ imageName: String) {
        newsImageView.image = UIImage(named: imageName)
    }
}
