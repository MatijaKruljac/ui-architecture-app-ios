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
    private let thirdButton = UIButton()
    private let stackView = UIStackView()

    private lazy var coordinator: MainCoordinator? = .init(navigationController: navigationController)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(stackView)

        stackView.addArrangedSubview(firstButton)
        stackView.addArrangedSubview(secondButton)
        stackView.addArrangedSubview(thirdButton)

        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 20

        firstButton.setTitle("FirstViewController", for: .normal)
        firstButton.backgroundColor = .black
        firstButton.addTarget(self, action: #selector(didTapFirstButton), for: .touchUpInside)

        secondButton.setTitle("SecondViewController", for: .normal)
        secondButton.addTarget(self, action: #selector(didTapSecondButton), for: .touchUpInside)
        secondButton.backgroundColor = .black

        thirdButton.setTitle("ThirdViewController", for: .normal)
        thirdButton.addTarget(self, action: #selector(didTapThirdButton), for: .touchUpInside)
        thirdButton.backgroundColor = .black

        firstButton.snp.makeConstraints {
            $0.width.equalTo(200)
            $0.height.equalTo(48)
        }

        secondButton.snp.makeConstraints {
            $0.width.equalTo(200)
            $0.height.equalTo(48)
        }

        thirdButton.snp.makeConstraints {
            $0.width.equalTo(200)
            $0.height.equalTo(48)
        }

        stackView.snp.makeConstraints {
            $0.center.equalToSuperview()
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

    @objc func didTapThirdButton() {
        coordinator?.presentThirdViewController()
    }
}
