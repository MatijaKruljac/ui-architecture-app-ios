//
//  ItemDetailsViewModel.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 25.05.2023..
//

import Foundation

final class ItemDetailsViewModel: ObservableObject {

    @Published var property: Int = 0

    private weak var coordinator: DashboardCoordinator?

    init(coordinator: DashboardCoordinator) {
        self.coordinator = coordinator
    }
}
