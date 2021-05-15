//
//  HomeInteractor.swift
//  SivasSighter
//
//  Created by mert.kutluca on 15.05.2021.
//

import SivasSightsFetchAPI

final class HomeInteractor: HomeInteractorProtocol {
    weak var delegate: HomeInteractorDelegate?
    
    private var sights: [Sight] = []
    
    func start() {
        delegate?.handle(output: .setLoading(true))
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.delegate?.handle(output: .setLoading(false))
            self.sights = [
                Sight.example(),
                Sight.example(),
            ]
            self.delegate?.handle(output: .displayHome(self.sights))
        }
    }
    
    func selectSight(at index: Int) {
        print("Not implemented yet")
    }
    
}
