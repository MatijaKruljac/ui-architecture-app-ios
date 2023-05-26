//
//  DashboardViewController.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import SwiftUI
import UIKit

final class DashboardViewController: HostingViewController<DashboardContentView> {

    override var navigationBarBackgroundColor: UIColor {
        .systemOrange.withAlphaComponent(0.7)
    }

    override init(contentView: DashboardContentView) {
        super.init(contentView: contentView)
        title = "Dashboard"
        tabBarItem = UITabBarItem(title: "Dashboard", image: UIImage(systemName: "1.circle"), tag: 0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let backButtonItem = UIBarButtonItem(
            title: "Back",
            style: .plain,
            target: self,
            action: #selector(didTapBackButtonItem)
        )

        let infoButtonItem = UIBarButtonItem(
            title: "Info",
            style: .plain,
            target: self,
            action: #selector(didTapInfoButtonItem)
        )

        navigationItem.leftBarButtonItem = backButtonItem
        navigationItem.rightBarButtonItem = infoButtonItem
    }

    @objc func didTapBackButtonItem() {
        rootView.viewModel.pushInitialViewController()
    }

    @objc func didTapInfoButtonItem() {
        rootView.state.shouldPresentInfoDialog.toggle()
    }
}
