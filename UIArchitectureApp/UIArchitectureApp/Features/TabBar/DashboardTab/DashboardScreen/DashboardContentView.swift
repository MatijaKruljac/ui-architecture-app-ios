//
//  DashboardContentView.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import SwiftUI

struct DashboardContentView: View {

    @ObservedObject var viewModel: DashboardViewModel
    @ObservedObject var state: DashboardState

    @State private var shouldPresentSheetView: Bool = false

    var body: some View {
        ZStack {
            VStack(spacing: 32) {
                Button("Push ItemDetailsViewController") {
                    self.viewModel.pushItemDetails()
                }
                Button("Show Info PopUpView") {
                    self.state.shouldPresentInfoDialog.toggle()
                }
                Button("Show SheetView") {
                    self.shouldPresentSheetView.toggle()
                }
                .sheet(isPresented: $shouldPresentSheetView) {
                    SheetView()
                }
            }

            PopUpView(
                title: "Lorem ipsum dolor",
                message: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                buttonText: "Ok",
                shouldShow: $state.shouldPresentInfoDialog
            )
        }
    }
}
