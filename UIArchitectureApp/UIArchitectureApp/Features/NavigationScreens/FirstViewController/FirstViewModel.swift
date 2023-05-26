//
//  FirstViewModel.swift
//  SwiftUIPractices
//
//  Created by Matija Kruljac on 23.05.2023..
//

import Foundation

final class FirstViewModel: ObservableObject {

    @Published var firstPoperty: Int = 0
    @Published var secondProperty: Int = 0

    private weak var coordinator: NavigationCoordinator?

    private var firstTimer: Timer?
    private var secondTimer: Timer?

    init(coordinator: NavigationCoordinator) {
        self.coordinator = coordinator
    }

    deinit {
        firstTimer?.invalidate()
        firstTimer = nil

        secondTimer?.invalidate()
        secondTimer = nil
    }

    func resetValues() {
        firstPoperty = 0
        secondProperty = 0
    }

    func pushSecondViewController() {
        coordinator?.pushSecondViewController()
    }

    func pushThirdViewController() {
        coordinator?.pushThirdViewController()
    }

    @discardableResult
    func startFirstTimer() -> Self {
        firstTimer = Timer.scheduledTimer(withTimeInterval: 0.7, repeats: true) { [weak self] _ in
            self?.firstPoperty += 1
        }

        return self
    }

    @discardableResult
    func startSecondTimer() -> Self {
        secondTimer = Timer.scheduledTimer(withTimeInterval: 1.3, repeats: true) { [weak self] _ in
            self?.secondProperty += 1
        }

        return self
    }
}
