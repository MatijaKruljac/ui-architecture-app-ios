//
//  ViewControllerFactory.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import SwiftUI
import UIKit

enum ViewControllerFactory {

    static func profileSettingsViewController(navigationController: UINavigationController?) -> ProfileSettingsViewController {
        let profileSettingsViewModel = ProfileSettingsViewModel(navigationController: navigationController)
        let profileSettingsContentView = ProfileSettingsContentView(viewModel: profileSettingsViewModel)

        return ProfileSettingsViewController(contentView: profileSettingsContentView)
    }

    static func itemDetailsViewController(navigationController: UINavigationController?) -> ItemDetailsViewController {
        let itemDetailsViewModel = ItemDetailsViewModel(navigationController: navigationController)
        let itemDetailsContentView = ItemDetailsContentView(viewModel: itemDetailsViewModel)

        return ItemDetailsViewController(contentView: itemDetailsContentView)
    }
}

// MARK: - Initial ViewControllers for every tab in TabBar
extension ViewControllerFactory {

    static func tabDashboardViewController(navigationController: UINavigationController?) -> DashboardViewController {
        let dashboardViewModel = DashboardViewModel(navigationController: navigationController)
        let dashboardState = DashboardState()
        let dashboardContentView = DashboardContentView(viewModel: dashboardViewModel, state: dashboardState)

        return DashboardViewController(contentView: dashboardContentView)
    }

    static func tabProfileViewController(navigationController: UINavigationController?) -> ProfileViewController {
        let profileViewModel = ProfileViewModel(navigationController: navigationController)
        let profileContentView = ProfileContentView(viewModel: profileViewModel)

        return ProfileViewController(contentView: profileContentView)
    }
}
