//
//  ProfileSettingsViewController.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 25.05.2023..
//

import UIKit

final class ProfileSettingsViewController: HostingViewController<ProfileSettingsContentView> {

    override var navigationBarBackgroundColor: UIColor {
        .systemCyan
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Profile Settings"
    }
}
