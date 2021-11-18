//
//  Tab3Coordinator.swift
//  Cordinator Pattern Sample
//
//  Created by Ali Fayed on 18/11/2021.
//
import Foundation
import XCoordinator

enum ThirdTabRoute: Route {
    case thirdTab
    case navigateView(passedText: String, backgroundColor: UIColor)
}
class Tab3Coordinator: NavigationCoordinator<ThirdTabRoute> {
    init() {
        super.init(initialRoute: .thirdTab)
    }
    override func prepareTransition(for route: ThirdTabRoute) -> NavigationTransition {
        switch route {
        case .thirdTab:
            let viewController = ThirdViewController.instaintiate(on: .main)
            viewController.navigationItem.title = "ThirdTab"
            viewController.router = unownedRouter
            return .push(viewController)
        case .navigateView(let text, let color):
            let viewController = ThirdPassedDataViewController.instaintiate(on: .passed)
            viewController.labelExample = text
            viewController.view.backgroundColor = color
            return .push(viewController)
        }
    }
}
