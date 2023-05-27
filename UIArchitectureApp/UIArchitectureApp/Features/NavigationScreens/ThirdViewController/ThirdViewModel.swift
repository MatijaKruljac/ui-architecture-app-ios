//
//  ThirdViewModel.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 23.05.2023..
//

import Foundation

final class ThirdViewModel: ObservableObject {

    private weak var coordinator: NavigationCoordinator?

    init(coordinator: NavigationCoordinator) {
        self.coordinator = coordinator
    }
}
