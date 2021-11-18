//
//  Tab2Coordinator.swift
//  Cordinator Pattern Sample
//
//  Created by Ali Fayed on 18/11/2021.
//
import Foundation
import XCoordinator

enum SecondTabRoute: Route {
    case secondTab
    case navigateView(passedText: String, backgroundColor: UIColor)
}
class Tab2Coordinator: NavigationCoordinator<SecondTabRoute> {
    init() {
        super.init(initialRoute: .secondTab)
    }
    override func prepareTransition(for route: SecondTabRoute) -> NavigationTransition {
        switch route {
        case .secondTab:
            let viewController = SecondViewController.instaintiate(on: .main)
            viewController.navigationItem.title = "SecondTab"
            viewController.router = unownedRouter
            return .push(viewController)
        case .navigateView(let text, let color):
            let viewController = SecondPassedDataViewController.instaintiate(on: .passed)
            viewController.labelExample = text
            viewController.view.backgroundColor = color
            return .push(viewController)
        }
    }
}
