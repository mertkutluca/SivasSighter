//
//  HomeBuilder.swift
//  SivasSighter
//
//  Created by mert.kutluca on 15.05.2021.
//

import UIKit

final class HomeBuilder {
    
    static func build() -> HomeViewController {
        let sb = UIStoryboard(name: StoryboardNames.home.rawValue, bundle: nil)
        let vc = sb.instantiateInitialViewController() as! HomeViewController
        let interactor = HomeInteractor()
        let router = HomeRouter(vc: vc)
        let presenter = HomePresenter(interactor: interactor,
                                      router: router,
                                      vc: vc)
        vc.presenter = presenter
        
        return vc
    }

}
