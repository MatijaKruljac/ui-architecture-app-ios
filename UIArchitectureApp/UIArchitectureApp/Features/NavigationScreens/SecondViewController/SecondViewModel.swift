//
//  SecondViewModel.swift
//  SwiftUIPractices
//
//  Created by Matija Kruljac on 23.05.2023..
//

import Foundation

final class SecondViewModel: ObservableObject {

    private weak var coordinator: NavigationCoordinator?

    init(coordinator: NavigationCoordinator) {
        self.coordinator = coordinator
    }

    func pushFirstViewController() {
        coordinator?.pushFirstViewController()
    }
}
