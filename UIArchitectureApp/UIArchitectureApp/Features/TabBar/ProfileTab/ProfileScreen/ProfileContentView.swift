//
//  ProfileContentView.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import SwiftUI

struct ProfileContentView: View {

    @ObservedObject var viewModel: ProfileViewModel

    var body: some View {
        Button("Push ProfileSettingsViewController") {
            viewModel.pushProfileSettings()
        }
    }
}
