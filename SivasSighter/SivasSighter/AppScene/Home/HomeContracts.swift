//
//  HomeContracts.swift
//  SivasSighter
//
//  Created by mert.kutluca on 15.05.2021.
//

import Foundation
import SivasSightsFetchAPI

// MARK: - Interactor
protocol HomeInteractorProtocol: class {
    var delegate: HomeInteractorDelegate? { get set }
    func start()
    func selectSight(at index: Int)
}

enum HomeInteractorOutput: Equatable {
    case setLoading(Bool)
    case displayHome([Sight])
}

protocol HomeInteractorDelegate: class {
    func handle(output: HomeInteractorOutput)
}

// MARK: - Presenter
protocol HomePresenterProtocol: class {
    func start()
    func selectSight(at index: Int)
}

enum HomePresenterOutput: Equatable {
    case setLoading(Bool)
    case updateTitle(String)
    case displayHome([Sight])
}


// MARK: - View Controller
protocol HomeViewControllerProtocol: class {
    func handle(output: HomePresenterOutput)
}


// MARK: - Router
enum HomeRoute: Equatable {
    case sight
}

protocol HomeRouterProtocol: class {
    func navigate(to route: HomeRoute)
}

