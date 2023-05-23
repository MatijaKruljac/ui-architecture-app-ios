//
//  HostingViewContoller.swift
//  SwiftUIPractices
//
//  Created by Matija Kruljac on 23.05.2023..
//

import SwiftUI
import SnapKit
import UIKit

class HostingViewController<ContentView: View>: UIViewController {

    private let hostingController: UIHostingController<ContentView>

    var rootView: ContentView {
        hostingController.rootView
    }

    init(contentView: ContentView) {
        self.hostingController = UIHostingController(rootView: contentView)
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(hostingController.view)
        hostingController.view.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
