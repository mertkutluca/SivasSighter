//
//  AppRouter.swift
//  SivasSighter
//
//  Created by mert.kutluca on 14.05.2021.
//

import UIKit

final class AppRouter {
    
    var mainWindow: UIWindow?
    
    func start(window: UIWindow) {
        mainWindow = window
        // Has to crash if window not exist
        let hvc = HomeBuilder.build()
        let nc = UINavigationController(rootViewController: hvc)
        mainWindow!.rootViewController = nc
        mainWindow!.makeKeyAndVisible()
    }
}
