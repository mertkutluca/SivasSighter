//
//  HomePresenter.swift
//  SivasSighter
//
//  Created by mert.kutluca on 15.05.2021.
//

import Foundation

final class HomePresenter: HomePresenterProtocol {
    
    private let interactor: HomeInteractorProtocol
    private let router: HomeRouterProtocol
    private unowned let vc: HomeViewControllerProtocol
    
    init(interactor: HomeInteractorProtocol,
         router: HomeRouterProtocol,
         vc: HomeViewControllerProtocol) {
        self.interactor = interactor
        self.router = router
        self.vc = vc
        self.interactor.delegate = self
    }
    
    func start() {
        vc.handle(output: .updateTitle("Home"))
        interactor.start()
    }
    
    func selectSight(at index: Int) {
        interactor.selectSight(at: index)
    }
}

extension HomePresenter: HomeInteractorDelegate {
    
    func handle(output: HomeInteractorOutput) {
        switch output {
        case .setLoading(let isLoading):
            vc.handle(output: .setLoading(isLoading))
        case .displayHome(let sights):
            vc.handle(output: .displayHome(sights))
        }
    }
}
