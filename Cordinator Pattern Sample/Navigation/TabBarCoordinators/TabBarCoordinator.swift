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
    case thirdTab
    case fourthTab
}
class HomeTabBarCoordinator: TabBarCoordinator<TabBarRoute> {
    private let firstTabRouter: StrongRouter<FirstTabRoute>
    private let secondTabRouter: StrongRouter<SecondTabRoute>
    private let thirdTabRouter: StrongRouter<ThirdTabRoute>
    private let FourthTabRouter: StrongRouter<FourthTabRoute>
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
        //
        let thirdTabCoordinator = Tab3Coordinator()
        thirdTabCoordinator.rootViewController.navigationBar.prefersLargeTitles = true
        thirdTabCoordinator.rootViewController.navigationItem.largeTitleDisplayMode = .always
        thirdTabCoordinator.rootViewController.tabBarItem =
        UITabBarItem(title: "Tab3", image: UIImage(systemName: "homekit"), selectedImage: UIImage(systemName: "homekit"))
        //
        let fourthTabCoordinator = Tab4Coordinator()
        fourthTabCoordinator.rootViewController.navigationBar.prefersLargeTitles = true
        fourthTabCoordinator.rootViewController.navigationItem.largeTitleDisplayMode = .always
        fourthTabCoordinator.rootViewController.tabBarItem =
        UITabBarItem(title: "Tab4", image: UIImage(systemName: "homekit"), selectedImage: UIImage(systemName: "homekit"))
        //
        self.init(firstTabRouter: firstTabCoordinator.strongRouter,
                  secondTabRouter: secondTabCoordinator.strongRouter, thirdTabRouter: thirdTabCoordinator.strongRouter, fouthTabRouter: fourthTabCoordinator.strongRouter)
    }
    init(firstTabRouter: StrongRouter<FirstTabRoute>, secondTabRouter: StrongRouter<SecondTabRoute>, thirdTabRouter: StrongRouter<ThirdTabRoute>, fouthTabRouter: StrongRouter<FourthTabRoute>) {
        self.firstTabRouter = firstTabRouter
        self.secondTabRouter = secondTabRouter
        self.thirdTabRouter = thirdTabRouter
        self.FourthTabRouter = fouthTabRouter
        super.init(tabs: [firstTabRouter, secondTabRouter, thirdTabRouter, fouthTabRouter], select: firstTabRouter)
    }
    // MARK: - Overrides
    override func prepareTransition(for route: TabBarRoute) -> TabBarTransition {
        switch route {
        case .firstTab:
            return .select(firstTabRouter)
        case .secondTab:
            return .select(secondTabRouter)
        case .thirdTab:
            return .select(thirdTabRouter)
        case .fourthTab:
            return .select(FourthTabRouter)
        }
    }
 }
