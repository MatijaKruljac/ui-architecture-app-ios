//
//  ProfileViewModel.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import UIKit

final class ProfileViewModel: ObservableObject {

    private let coordinator: ProfileCoordinator
    private let bottomSheetCoordinator: BottomSheetCoordinator

    private weak var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        coordinator = ProfileCoordinator(navigationController: navigationController)
        bottomSheetCoordinator = BottomSheetCoordinator(navigationController: navigationController)
    }

    func pushProfileSettings() {
        coordinator.pushProfileSettings()
    }

    func pushBottomSheet(state: BottomSheetState) {
        bottomSheetCoordinator.presentSheet(state: state)
    }

    func dimissBottomSheet() {
        bottomSheetCoordinator.dismissSheet()
    }

    func pushInitialViewController() {
        UIApplication
            .shared
            .sceneDelegate?
            .switchToMainNavigationController()
    }
}
