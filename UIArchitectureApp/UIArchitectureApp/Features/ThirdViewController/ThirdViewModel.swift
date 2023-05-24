//
//  ThirdViewModel.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 23.05.2023..
//

import Foundation

final class ThirdViewModel: ObservableObject {

    @Published var property: Int = 0

    private weak var coordinator: MainCoordinator?

    init(coordinator: MainCoordinator) {
        self.coordinator = coordinator
    }
}
