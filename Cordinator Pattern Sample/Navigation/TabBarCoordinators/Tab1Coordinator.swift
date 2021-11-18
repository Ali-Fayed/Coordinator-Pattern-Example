//
//  Tab1Coordinator.swift
//  Cordinator Pattern Sample
//
//  Created by Ali Fayed on 18/11/2021.
//

import Foundation
import XCoordinator

enum FirstTabRoute: Route {
    case firstTab
    case navigateView(passedText: String, backgroundColor: UIColor)
}
class Tab1Coordinator: NavigationCoordinator<FirstTabRoute> {
    init() {
        super.init(initialRoute: .firstTab)
    }
    override func prepareTransition(for route: FirstTabRoute) -> NavigationTransition {
        switch route {
        case .firstTab:
            let viewController = FirstViewController.instaintiate(on: .main)
            viewController.navigationItem.title = "FirstTab"
            viewController.router = unownedRouter
            return .push(viewController)
        case .navigateView(let text, let color):
            let viewController = FirstPassedDataViewController.instaintiate(on: .passed)
            viewController.labelExample = text
            viewController.view.backgroundColor = color
            return .push(viewController)
        }
    }
}
