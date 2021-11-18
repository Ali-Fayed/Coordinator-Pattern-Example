//
//  Tab4Coordinator.swift
//  Cordinator Pattern Sample
//
//  Created by Ali Fayed on 18/11/2021.
//
import Foundation
import XCoordinator

enum FourthTabRoute: Route {
    case fourthTab
    case navigateView(passedText: String, backgroundColor: UIColor)
}
class Tab4Coordinator: NavigationCoordinator<FourthTabRoute> {
    init() {
        super.init(initialRoute: .fourthTab)
    }
    override func prepareTransition(for route: FourthTabRoute) -> NavigationTransition {
        switch route {
        case .fourthTab:
            let viewController = FourthViewController.instaintiate(on: .main)
            viewController.navigationItem.title = "FourthTab"
            viewController.router = unownedRouter
            return .push(viewController)
        case .navigateView(let text, let color):
            let viewController = FourthPassedDataViewController.instaintiate(on: .passed)
            viewController.labelExample = text
            viewController.view.backgroundColor = color
            return .push(viewController)
        }
    }
}
