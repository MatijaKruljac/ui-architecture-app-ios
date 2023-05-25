//
//  ViewControllerFactory.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import SwiftUI
import UIKit

enum ViewControllerFactory {

    static func profileSettingsViewController(_ navigationController: UINavigationController?) -> ProfileSettingsViewController {
        let profileSettingsCoordinator = ProfileCoordinator(navigationController: navigationController)
        let profileSettingsViewModel = ProfileSettingsViewModel(coordinator: profileSettingsCoordinator)
        let profileSettingsContentView = ProfileSettingsContentView(viewModel: profileSettingsViewModel)

        return ProfileSettingsViewController(contentView: profileSettingsContentView)
    }

    static func itemDetailsViewController(_ navigationController: UINavigationController?) -> ItemDetailsViewController {
        let dashboardCoordinator = DashboardCoordinator(navigationController: navigationController)
        let itemDetailsViewModel = ItemDetailsViewModel(coordinator: dashboardCoordinator)
        let itemDetailsContentView = ItemDetailsContentView(viewModel: itemDetailsViewModel)

        return ItemDetailsViewController(contentView: itemDetailsContentView)
    }
}

// MARK: - Initial ViewControllers for every tab in TabBar
extension ViewControllerFactory {

    static func tabDashboardViewController(coordinator: DashboardCoordinator) -> DashboardViewController {
        let dashboardViewModel = DashboardViewModel(coordinator: coordinator)
        let dashboardState = DashboardState()
        let dashboardContentView = DashboardContentView(viewModel: dashboardViewModel, state: dashboardState)

        return DashboardViewController(contentView: dashboardContentView)
    }

    static func tabProfileViewController(coordinator: ProfileCoordinator) -> ProfileViewController {
        let profileViewModel = ProfileViewModel(coordinator: coordinator)
        let profileContentView = ProfileContentView(viewModel: profileViewModel)

        return ProfileViewController(contentView: profileContentView)
    }
}
