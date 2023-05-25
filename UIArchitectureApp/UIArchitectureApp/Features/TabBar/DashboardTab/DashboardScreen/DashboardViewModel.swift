//
//  DashboardViewModel.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import Foundation

final class DashboardViewModel: ObservableObject {

    @Published var property: Int = 0

    private weak var coordinator: DashboardCoordinator?

    init(coordinator: DashboardCoordinator) {
        self.coordinator = coordinator
    }

    func pushItemDetails() {
        coordinator?.pushItemDetails()
    }
}
