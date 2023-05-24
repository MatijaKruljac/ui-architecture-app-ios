//
//  FirstContentView.swift
//  SwiftUIPractices
//
//  Created by Matija Kruljac on 23.05.2023..
//

import SwiftUI

struct FirstContentView: View {

    @ObservedObject var viewModel: FirstViewModel

    var body: some View {
        VStack(spacing: 24) {
            Text("** Observed **")
            VStack(spacing: 4) {
                Text("First publisher: \(viewModel.firstPoperty)").foregroundColor(.red)
                Text("Second publisher: \(viewModel.secondProperty)").foregroundColor(.red)
            }
            VStack(spacing: 4) {
                Button("Present SecondViewController") {
                    viewModel.presentSecondViewController()
                }
                Button("Present ThirdViewController") {
                    viewModel.presentThirdViewController()
                }
            }
        }.onAppear {
            viewModel
                .startFirstTimer()
                .startSecondTimer()
        }.background(.white)
    }
}
