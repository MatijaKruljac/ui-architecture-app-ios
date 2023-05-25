//
//  ItemDetailsViewController.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 25.05.2023..
//

import UIKit

final class ItemDetailsViewController: HostingViewController<ItemDetailsContentView> {

    override var navigationBarBackgroundColor: UIColor {
        .systemOrange
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Item Details"
    }
}
