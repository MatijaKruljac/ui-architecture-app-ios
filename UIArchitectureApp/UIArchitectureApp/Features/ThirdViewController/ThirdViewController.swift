//
//  ThirdViewController.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 23.05.2023..
//

import UIKit

final class ThirdViewController: HostingViewController<ThirdContentView> {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Third"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .yellow

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}
