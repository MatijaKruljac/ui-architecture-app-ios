//
//  DashboardContentView.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import SwiftUI

final class DashboardModel: ObservableObject {

    @Published var shouldPresentInfoDialog: Bool = false
    @Published var shouldPresentSheetView: Bool = false
}

struct DashboardContentView: View {

    @ObservedObject var viewModel: DashboardViewModel

    @State private var shouldPresentSheetView: Bool = false
    @State private var shouldShowPopUpView: Bool = false

    var body: some View {
        ZStack {
            VStack(spacing: 32) {
                Button("Push ItemDetailsViewController") {
                    self.viewModel.pushItemDetails()
                }
                Button("Show PopUpView") {
                    withAnimation(.linear(duration: 0.3)) {
                        self.shouldShowPopUpView.toggle()
                    }
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
                show: $shouldShowPopUpView
            )
        }
    }
}
