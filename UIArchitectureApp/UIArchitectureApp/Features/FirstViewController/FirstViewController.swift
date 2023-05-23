//
//  FirstViewController.swift
//  SwiftUIPractices
//
//  Created by Matija Kruljac on 23.05.2023..
//

import UIKit

final class FirstViewController: HostingViewController<FirstContentView> {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "First"

        let resetValuesButtonItem = UIBarButtonItem(
            title: "Reset",
            style: .plain,
            target: self,
            action: #selector(didTapResetValuesButtonItem)
        )

        navigationItem.rightBarButtonItem = resetValuesButtonItem
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .yellow

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

    @objc func didTapResetValuesButtonItem() {
        rootView.viewModel.resetValues()
    }
}
