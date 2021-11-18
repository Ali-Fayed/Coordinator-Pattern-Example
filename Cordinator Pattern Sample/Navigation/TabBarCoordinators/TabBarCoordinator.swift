//
//  TabBarCoordinator.swift
//  Cordinator Pattern Sample
//
//  Created by Ali Fayed on 18/11/2021.
//

import Foundation
import XCoordinator
enum TabBarRoute: Route {
    case firstTab
    case secondTab
}
class HomeTabBarCoordinator: TabBarCoordinator<TabBarRoute> {
    private let firstTabRouter: StrongRouter<FirstTabRoute>
    private let secondTabRouter: StrongRouter<SecondTabRoute>
    // MARK: - Initialization
    convenience init() {
        let firstTabCoordinator = Tab1Coordinator()
        firstTabCoordinator.rootViewController.navigationBar.prefersLargeTitles = true
        firstTabCoordinator.rootViewController.navigationItem.largeTitleDisplayMode = .always
        firstTabCoordinator.rootViewController.tabBarItem =
        UITabBarItem(title: "Tab1", image: UIImage(systemName: "homekit"), selectedImage: UIImage(systemName: "homekit"))
        //
        let secondTabCoordinator = Tab2Coordinator()
        secondTabCoordinator.rootViewController.navigationBar.prefersLargeTitles = true
        secondTabCoordinator.rootViewController.navigationItem.largeTitleDisplayMode = .always
        secondTabCoordinator.rootViewController.tabBarItem =
        UITabBarItem(title: "Tab2", image: UIImage(systemName: "homekit"), selectedImage: UIImage(systemName: "homekit"))

        self.init(firstTabRouter: firstTabCoordinator.strongRouter,
                  secondTabRouter: secondTabCoordinator.strongRouter)
    }
    init(firstTabRouter: StrongRouter<FirstTabRoute>, secondTabRouter: StrongRouter<SecondTabRoute>) {
        self.firstTabRouter = firstTabRouter
        self.secondTabRouter = secondTabRouter
        super.init(tabs: [firstTabRouter, secondTabRouter], select: firstTabRouter)
    }
    // MARK: - Overrides
    override func prepareTransition(for route: TabBarRoute) -> TabBarTransition {
        switch route {
        case .firstTab:
            return .select(firstTabRouter)
        case .secondTab:
            return .select(secondTabRouter)
        }
    }
 }
