//
//  DashboardViewModel.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import UIKit

final class DashboardViewModel: ObservableObject {

    @Published var property: Int = 0

    private let dashboardCoordinator: DashboardCoordinator
    private let profileCoordinator: ProfileCoordinator

    private weak var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        dashboardCoordinator = DashboardCoordinator(navigationController: navigationController)
        profileCoordinator = ProfileCoordinator(navigationController: navigationController)
    }

    func pushItemDetails() {
        dashboardCoordinator.pushItemDetails()
    }

    func pushProfileSettings() {
        profileCoordinator.pushProfileSettings()
    }

    func pushInitialViewController() {
        let scene = UIApplication.shared.connectedScenes.first
        if let sceneDelegate = scene?.delegate as? SceneDelegate {
            sceneDelegate.window?.rootViewController = UINavigationController(rootViewController: InitialViewController())
        }
    }
}
