//
//  ViewController.swift
//  TodoApp
//
//  Created by Bilge Çakar on 24.09.2022.
//

import UIKit

class HomePageViewController: UIViewController {
    
    @IBOutlet weak var postsTableview: UITableView!
    @IBOutlet weak var yellowView: UIView! {
        didSet {
            yellowView.layer.cornerRadius = 20
            yellowView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        }
    }
    @IBOutlet weak var yellowActivityIndicator: UIActivityIndicatorView!
    
    private let viewModel = PostsViewModel()
    private var items: [PostCellViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Delagation
        postsTableview.dataSource = self
        postsTableview.delegate = self
        viewModel.delegate = self
        viewModel.didViewLoad()
        registerCell()
        
        yellowActivityIndicator.isHidden = false
        yellowActivityIndicator.startAnimating()
        
    }
    
    //Register cell
    private func registerCell() {
        postsTableview.register(UINib(nibName: String(describing: PostTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: PostTableViewCell.self))
    }
}

extension HomePageViewController: PostsViewModelProtocol {
    func didCellItemFetch(_ items: [PostCellViewModel]) {
        self.items = items
        
        DispatchQueue.main.async {
            self.postsTableview.reloadData()
            self.yellowActivityIndicator.isHidden = true
            self.yellowActivityIndicator.stopAnimating()
        }
    }
    
    func showEmptyView() {
        //Todo
    }
    func hideEmptyView() {
        //Todo
    }
    
}

extension HomePageViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count

    }
  
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PostTableViewCell.self), for: indexPath) as! PostTableViewCell
        
        cell.postTitleLabel.text = items[indexPath.row].title
        cell.postBodyLabel.text = items[indexPath.row].body
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        cell.selectedBackgroundView = backgroundView
        
        return cell
    }
    
    
    
}

