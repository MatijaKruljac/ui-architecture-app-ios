//
//  ProfileCoordinator.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import UIKit

final class ProfileCoordinator: CoordinatorProtocol {

    private weak var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    func pushProfileSettings() {
        let profileSettingsViewController = ViewControllerFactory
            .profileSettingsViewController(navigationController: navigationController)
        navigationController?.pushViewController(profileSettingsViewController, animated: true)
    }
}
