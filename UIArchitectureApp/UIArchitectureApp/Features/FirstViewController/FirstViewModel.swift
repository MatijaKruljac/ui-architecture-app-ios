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

    private var firstTimer: Timer?
    private var secondTimer: Timer?

    deinit {
        firstTimer?.invalidate()
        firstTimer = nil

        secondTimer?.invalidate()
        secondTimer = nil
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

    func resetValues() {
        firstPoperty = 0
        secondProperty = 0
    }
}
