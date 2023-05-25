//
//  DashboardState.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 25.05.2023..
//

import SwiftUI

final class DashboardState: ObservableObject {

    @Published var shouldPresentInfoDialog: Bool = false
}
