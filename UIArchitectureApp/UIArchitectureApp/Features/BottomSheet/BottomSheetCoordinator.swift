//
//  BottomSheetCoordinator.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 26.05.2023..
//

import UIKit
import SnapKit

final class BottomSheetCoordinator: CoordinatorProtocol {

    private weak var navigationController: UINavigationController?

    private var backgroundView: UIView?
    private var bottomSheetViewController: BottomSheetViewController?
    private var height: CGFloat = 0

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    func presentSheet(state: BottomSheetState, height: CGFloat = 350) {
        guard let tabBarController = UIApplication.shared.sceneDelegate?.tabBarController else {
            return
        }

        self.height = height

        backgroundView = UIView()
        guard let backgroundView else {
            return
        }

        backgroundView.backgroundColor = .black
        backgroundView.alpha = 0.0

        tabBarController.view.addSubview(backgroundView)
        backgroundView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }

        let bottomSheetViewModel = BottomSheetViewModel(navigationController: navigationController)
        let bottomSheetContentView = BottomSheetContentView(viewModel: bottomSheetViewModel, state: state)
        bottomSheetViewController = BottomSheetViewController(contentView: bottomSheetContentView)

        guard let bottomSheetViewController else {
            return
        }

        tabBarController.addChild(bottomSheetViewController)
        tabBarController.view.addSubview(bottomSheetViewController.view)
        bottomSheetViewController.view.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview()
            $0.bottom.equalToSuperview().offset(height)
            $0.height.equalTo(height)
        }

        UIView.animate(withDuration: 0.3, animations: {
            backgroundView.alpha = 0.5
        }, completion: { _ in
            self.bottomSheetViewController?.view.snp.updateConstraints {
                $0.bottom.equalToSuperview().offset(0)
            }
            UIView.animate(withDuration: 0.3) {
                tabBarController.view.layoutIfNeeded()
            }
        })
    }

    func dismissSheet() {
        guard let tabBarController = UIApplication.shared.sceneDelegate?.tabBarController else {
            return
        }

        UIView.animate(withDuration: 0.3, animations: {
            self.bottomSheetViewController?.view.snp.updateConstraints {
                $0.bottom.equalToSuperview().offset(self.height)
            }
            UIView.animate(withDuration: 0.3) {
                tabBarController.view.layoutIfNeeded()
            }
        }, completion: { _ in
            UIView.animate(withDuration: 0.3, animations: {
                self.backgroundView?.alpha = 0.0
            }, completion: { _ in
                self.bottomSheetViewController?.view.removeFromSuperview()
                self.bottomSheetViewController?.removeFromParent()
                self.bottomSheetViewController = nil
            })
        })
    }
}
