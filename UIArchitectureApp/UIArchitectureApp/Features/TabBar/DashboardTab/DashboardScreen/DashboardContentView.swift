//
//  DashboardContentView.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 24.05.2023..
//

import SwiftUI

struct DashboardContentView: View {

    @ObservedObject var viewModel: DashboardViewModel

    var body: some View {
        Button("Push ItemDetailsViewController") {
            viewModel.pushItemDetails()
        }
    }
}
