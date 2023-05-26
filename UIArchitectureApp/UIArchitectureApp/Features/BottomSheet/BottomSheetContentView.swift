//
//  BottomSheetContentView.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 26.05.2023..
//

import SwiftUI

struct BottomSheetContentView: View {

    @ObservedObject var viewModel: BottomSheetViewModel
    @ObservedObject var state: BottomSheetState

    var body: some View {
        VStack(spacing: 40) {
            Button("Increment: \(state.counter)") {
                state.counter += 1
            }

            Button("Close") {
                state.shouldBeClosed.toggle()
            }
            .foregroundColor(.red)
        }
    }
}
