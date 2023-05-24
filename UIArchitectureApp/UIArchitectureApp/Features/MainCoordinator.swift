//
//  MainCoordinator.swift
//  SwiftUIPractices
//
//  Created by Matija Kruljac on 23.05.2023..
//

import UIKit

final class MainCoordinator {

    private var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    func presentFirstViewController() {
        let firstViewModel = FirstViewModel(coordinator: self)
        let firstContentView = FirstContentView(viewModel: firstViewModel)
        let firstViewController = FirstViewController(contentView: firstContentView)
        navigationController?.pushViewController(firstViewController, animated: true)
    }

    func presentSecondViewController() {
        let secondViewModel = SecondViewModel(coordinator: self)
        let secondContentView = SecondContentView(viewModel: secondViewModel, counterData: CounterData())
        let secondViewController = SecondViewController(contentView: secondContentView)
        navigationController?.pushViewController(secondViewController, animated: true)
    }

    func presentThirdViewController() {
        let thirdViewModel = ThirdViewModel(coordinator: self)
        let thirdContentView = ThirdContentView(viewModel: thirdViewModel)
        let thirdViewController = ThirdViewController(contentView: thirdContentView)
        navigationController?.pushViewController(thirdViewController, animated: true)
    }
}
