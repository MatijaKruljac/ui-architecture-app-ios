//
//  TabBarController.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 25.05.2023..
//

import UIKit

final class TabBarController: UITabBarController {

    private let dashboardNavigationController: UINavigationController
    private let dashboardViewController: DashboardViewController
    private let dashboardCoordinator: DashboardCoordinator

    private let profileNavigationController: UINavigationController
    private let profileCoordinator: ProfileCoordinator
    private let profileViewController: ProfileViewController

    init() {
        dashboardNavigationController = UINavigationController()
        dashboardCoordinator = DashboardCoordinator(navigationController: dashboardNavigationController)
        dashboardViewController = ViewControllerFactory.tabDashboardViewController(coordinator: dashboardCoordinator)
        dashboardNavigationController.viewControllers = [dashboardViewController]

        profileNavigationController = UINavigationController()
        profileCoordinator = ProfileCoordinator(navigationController: profileNavigationController)
        profileViewController = ViewControllerFactory.tabProfileViewController(coordinator: profileCoordinator)
        profileNavigationController.viewControllers = [profileViewController]

        super.init(nibName: nil, bundle: nil)

        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .lightText
        tabBar.isTranslucent = false
        tabBar.backgroundColor = .brown

        viewControllers = [
            dashboardNavigationController,
            profileNavigationController
        ]
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
