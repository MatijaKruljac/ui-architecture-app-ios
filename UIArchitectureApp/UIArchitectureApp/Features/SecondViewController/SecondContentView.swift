//
//  SecondContentView.swift
//  SwiftUIPractices
//
//  Created by Matija Kruljac on 23.05.2023..
//

import SwiftUI

final class CounterData: ObservableObject {

    @Published var value = 0
}

struct SecondContentView: View {
    
    @ObservedObject var viewModel: SecondViewModel
    @ObservedObject var counterData: CounterData

    var body: some View {
        VStack(spacing: 24) {
            Text("** Observed **")
            Text("Counter: \(counterData.value)").foregroundColor(.red)
        }.background(.white)
    }

    func incrementCounter() {
        counterData.value += 1
    }

    func decrementCounter() {
        counterData.value -= 1
    }
}
