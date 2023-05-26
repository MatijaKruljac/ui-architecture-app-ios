//
//  InitialViewController.swift
//  SwiftUIPractices
//
//  Created by Matija Kruljac on 23.05.2023..
//

import SnapKit
import UIKit

final class InitialViewController: UIViewController {

    private let firstButton = UIButton(type: .system)
    private let secondButton = UIButton(type: .system)
    private let thirdButton = UIButton(type: .system)
    private let fourthButton = UIButton(type: .system)
    private let stackView = UIStackView()

    private lazy var coordinator: NavigationCoordinator? = .init(navigationController: navigationController)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(stackView)

        stackView.addArrangedSubview(firstButton)
        stackView.addArrangedSubview(secondButton)
        stackView.addArrangedSubview(thirdButton)
        stackView.addArrangedSubview(fourthButton)

        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 20

        firstButton.setTitle("FirstViewController", for: .normal)
        firstButton.addTarget(self, action: #selector(didTapFirstButton), for: .touchUpInside)
        firstButton.tintColor = .white
        firstButton.backgroundColor = UIColor.black.withAlphaComponent(0.7)

        secondButton.setTitle("SecondViewController", for: .normal)
        secondButton.addTarget(self, action: #selector(didTapSecondButton), for: .touchUpInside)
        secondButton.tintColor = .white
        secondButton.backgroundColor = UIColor.black.withAlphaComponent(0.7)

        thirdButton.setTitle("ThirdViewController", for: .normal)
        thirdButton.addTarget(self, action: #selector(didTapThirdButton), for: .touchUpInside)
        thirdButton.tintColor = .white
        thirdButton.backgroundColor = UIColor.black.withAlphaComponent(0.7)

        fourthButton.setTitle("TabBarController", for: .normal)
        fourthButton.addTarget(self, action: #selector(didTapFourthButton), for: .touchUpInside)
        fourthButton.tintColor = .white
        fourthButton.backgroundColor = UIColor.black.withAlphaComponent(0.7)

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

        fourthButton.snp.makeConstraints {
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
        coordinator?.pushFirstViewController()
    }

    @objc func didTapSecondButton() {
        coordinator?.pushSecondViewController()
    }

    @objc func didTapThirdButton() {
        coordinator?.pushThirdViewController()
    }

    @objc func didTapFourthButton() {

    }
}
