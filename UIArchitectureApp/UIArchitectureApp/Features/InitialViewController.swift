//
//  InitialViewController.swift
//  SwiftUIPractices
//
//  Created by Matija Kruljac on 23.05.2023..
//

import SnapKit
import UIKit

final class InitialViewController: UIViewController {

    private let firstButton = UIButton()
    private let secondButton = UIButton()

    private lazy var coordinator: MainCoordinator? = .init(navigationController: navigationController)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(firstButton)
        view.addSubview(secondButton)

        firstButton.setTitle("FirstViewController", for: .normal)
        firstButton.backgroundColor = .black
        firstButton.addTarget(self, action: #selector(didTapFirstButton), for: .touchUpInside)
        firstButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().offset(-32)
            $0.width.equalTo(200)
            $0.height.equalTo(40)
        }

        secondButton.setTitle("SecondViewController", for: .normal)
        secondButton.addTarget(self, action: #selector(didTapSecondButton), for: .touchUpInside)
        secondButton.backgroundColor = .black
        secondButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().offset(32)
            $0.width.equalTo(200)
            $0.height.equalTo(40)
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }

    @objc func didTapFirstButton() {
        coordinator?.presentFirstViewController()
    }

    @objc func didTapSecondButton() {
        coordinator?.presentSecondViewController()
    }
}
