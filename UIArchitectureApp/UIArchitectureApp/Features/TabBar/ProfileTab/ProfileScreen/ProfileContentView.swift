//
//  ProfileContentView.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import SwiftUI

struct ProfileContentView: View {

    @ObservedObject var viewModel: ProfileViewModel

    @ObservedObject var state: BottomSheetState = .init()

    var body: some View {
        VStack(spacing: 24) {
            Button("Push ProfileSettingsViewController") {
                self.viewModel.pushProfileSettings()
            }
            Button("Push BottomSheetViewController") {
                self.viewModel.pushBottomSheet(state: state)
            }
            Text("BottomSheet Counter: \(state.counter)").foregroundColor(.red)
        }.onReceive(state.$shouldBeClosed) { _ in
            self.viewModel.dimissBottomSheet()
        }
    }
}
