//
//  ProfileViewModel.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import UIKit

final class ProfileViewModel: ObservableObject {

    @Published var property: Int = 0

    private let coordinator: ProfileCoordinator

    private weak var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        coordinator = ProfileCoordinator(navigationController: navigationController)
    }

    func pushProfileSettings() {
        coordinator.pushProfileSettings()
    }
}
