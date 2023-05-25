//
//  SheetView.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 25.05.2023..
//

import SwiftUI

struct SheetView: View {

    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("Press to dismiss") {
            dismiss()
        }
        .font(.title3)
        .padding()
        .background(.black)
        .foregroundColor(.white)
    }
}
