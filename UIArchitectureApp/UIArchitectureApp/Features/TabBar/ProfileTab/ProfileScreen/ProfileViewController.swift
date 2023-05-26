//
//  ProfileViewController.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import UIKit

final class ProfileViewController: HostingViewController<ProfileContentView> {

    override var navigationBarBackgroundColor: UIColor {
        .systemOrange
    }

    override init(contentView: ProfileContentView) {
        super.init(contentView: contentView)

        title = "Profile"
        tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "2.circle"), tag: 1)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let backButtonItem = UIBarButtonItem(
            title: "Back",
            style: .plain,
            target: self,
            action: #selector(didTapBackButtonItem)
        )

        navigationItem.leftBarButtonItem = backButtonItem
    }

    @objc func didTapBackButtonItem() {
        rootView.viewModel.pushInitialViewController()
    }
}
