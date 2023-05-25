//
//  ProfileSettingsViewModel.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 25.05.2023..
//

import Foundation

final class ProfileSettingsViewModel: ObservableObject {

    @Published var property: Int = 0

    private weak var coordinator: ProfileCoordinator?

    init(coordinator: ProfileCoordinator) {
        self.coordinator = coordinator
    }
}
