//
//  SecondViewController.swift
//  SwiftUIPractices
//
//  Created by Matija Kruljac on 23.05.2023..
//

import UIKit

final class SecondViewController: HostingViewController<SecondContentView> {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Second"

        let incrementValueButtonItem = UIBarButtonItem(
            title: "Add",
            style: .plain,
            target: self,
            action: #selector(didTapIncrementValueButtonItem)
        )

        let decrementValueButtonItem = UIBarButtonItem(
            title: "Deduct",
            style: .plain,
            target: self,
            action: #selector(didTapDecrementValueButtonItem)
        )

        navigationItem.rightBarButtonItems = [decrementValueButtonItem, incrementValueButtonItem]
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .yellow

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

    @objc func didTapIncrementValueButtonItem() {
        rootView.incrementCounter()
    }

    @objc func didTapDecrementValueButtonItem() {
        rootView.decrementCounter()
    }
}
