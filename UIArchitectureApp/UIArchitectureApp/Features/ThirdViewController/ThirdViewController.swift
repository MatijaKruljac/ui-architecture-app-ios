//
//  ThirdViewController.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 23.05.2023..
//

import UIKit

final class ThirdViewController: HostingViewController<ThirdContentView> {

    override var navigationBarBackgroundColor: UIColor {
        .magenta
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Third"
    }
}
