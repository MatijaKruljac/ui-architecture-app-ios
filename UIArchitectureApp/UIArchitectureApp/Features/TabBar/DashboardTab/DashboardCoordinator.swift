//
//  DashboardCoordinator.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import UIKit

final class DashboardCoordinator {

    private weak var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    func pushItemDetails() {
        let itemDetailsViewController = ViewControllerFactory
            .itemDetailsViewController(navigationController: navigationController)
        navigationController?.pushViewController(itemDetailsViewController, animated: true)
    }
}
