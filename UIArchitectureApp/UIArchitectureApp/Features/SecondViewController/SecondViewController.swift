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

    @objc func didTapIncrementValueButtonItem() {
        rootView.incrementCounter()
    }

    @objc func didTapDecrementValueButtonItem() {
        rootView.decrementCounter()
    }
}
