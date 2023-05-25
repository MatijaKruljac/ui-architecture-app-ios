//
//  DashboardViewController.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import UIKit

final class DashboardViewController: HostingViewController<DashboardContentView> {

    override var navigationBarBackgroundColor: UIColor {
        .systemOrange
    }

    override init(contentView: DashboardContentView) {
        super.init(contentView: contentView)
        title = "Dashboard"
        tabBarItem = UITabBarItem(title: "Dashboard", image: UIImage(systemName: "1.circle"), tag: 0)
    }
}
