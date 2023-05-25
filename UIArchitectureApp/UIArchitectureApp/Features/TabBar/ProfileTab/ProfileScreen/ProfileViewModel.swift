//
//  ProfileViewModel.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import Foundation

final class ProfileViewModel: ObservableObject {

    @Published var property: Int = 0

    private weak var coordinator: ProfileCoordinator?

    init(coordinator: ProfileCoordinator) {
        self.coordinator = coordinator
    }

    func pushProfileSettings() {
        coordinator?.pushProfileSettings()
    }
}
