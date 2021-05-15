//
//  HomeViewController.swift
//  SivasSighter
//
//  Created by mert.kutluca on 15.05.2021.
//

import UIKit

final class HomeViewController: UIViewController {
    
    var presenter: HomePresenter!
    
    private var sights: [SightPresentation] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.start()
    }
    
}

extension HomeViewController: HomeViewControllerProtocol {
    func handle(output: HomePresenterOutput) {
        switch output {
        case .setLoading(let isLoading):
            UIApplication.shared.isNetworkActivityIndicatorVisible = isLoading
        case .updateTitle(let title):
            self.title = title
        case .displayHome(let _sights):
            self.sights = _sights.map {
                SightPresentation(title: $0.title, imageUrl: URL(string: $0.imageUrl), mediaurl: URL(string: $0.mediaUrl))
            }
            self.tableView.reloadData()
        }
    }
}
