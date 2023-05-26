//
//  ItemDetailsViewModel.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 25.05.2023..
//

import UIKit

final class ItemDetailsViewModel: ObservableObject {

    @Published var property: Int = 0

    private let coordinator: DashboardCoordinator

    private weak var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        coordinator = DashboardCoordinator(navigationController: navigationController)
    }
}
