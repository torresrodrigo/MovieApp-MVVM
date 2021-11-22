//
//  HomeView.swift
//  MovieApp
//
//  Created by Rodrigo Torres on 22/11/2021.
//

import UIKit

class HomeView: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var moviesCollectionView: UITableView!
    private var router = HomeRouter()
    private var viewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.bind(view: self, router: router)
        setupTableView()
    }

}

extension HomeView: UITableViewDelegate, UITableViewDataSource {
    
    private func setupTableView() {
        moviesCollectionView.delegate = self
        moviesCollectionView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = moviesCollectionView.dequeueReusableCell(withIdentifier: "Cell")!
        return cell
    }
    
}
