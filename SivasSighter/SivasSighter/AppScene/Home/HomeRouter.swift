//
//  HomeRouter.swift
//  SivasSighter
//
//  Created by mert.kutluca on 15.05.2021.
//

import UIKit

final class HomeRouter: HomeRouterProtocol {
    unowned let vc: UIViewController
    
    init(vc: UIViewController) {
        self.vc = vc
    }
    
    func navigate(to route: HomeRoute) {
        print("not implemented yer")
    }
}
