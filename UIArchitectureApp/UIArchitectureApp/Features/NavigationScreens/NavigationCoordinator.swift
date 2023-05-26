//
//  NavigationCoordinator.swift
//  SwiftUIPractices
//
//  Created by Matija Kruljac on 23.05.2023..
//

import UIKit

final class NavigationCoordinator {

    private weak var navigationController: UINavigationController?

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    func pushFirstViewController() {
        let firstViewModel = FirstViewModel(coordinator: self)
        let firstContentView = FirstContentView(viewModel: firstViewModel)
        let firstViewController = FirstViewController(contentView: firstContentView)
        navigationController?.pushViewController(firstViewController, animated: true)
    }

    func pushSecondViewController() {
        let secondViewModel = SecondViewModel(coordinator: self)
        let secondContentView = SecondContentView(viewModel: secondViewModel, counterData: CounterData())
        let secondViewController = SecondViewController(contentView: secondContentView)
        navigationController?.pushViewController(secondViewController, animated: true)
    }

    func pushThirdViewController() {
        let thirdViewModel = ThirdViewModel(coordinator: self)
        let thirdContentView = ThirdContentView(viewModel: thirdViewModel)
        let thirdViewController = ThirdViewController(contentView: thirdContentView)
        navigationController?.pushViewController(thirdViewController, animated: true)
    }

    func pushTabBarController() {
        let scene = UIApplication.shared.connectedScenes.first
        if let sceneDelegate = scene?.delegate as? SceneDelegate {
            sceneDelegate.window?.rootViewController = TabBarController()
        }
    }
}
