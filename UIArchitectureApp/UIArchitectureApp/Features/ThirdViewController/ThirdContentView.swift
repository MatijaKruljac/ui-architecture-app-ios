//
//  ThirdContentView.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 23.05.2023..
//

import SwiftUI

struct ThirdContentView: View {

    @ObservedObject var viewModel: ThirdViewModel

    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack(spacing: 0) {
                    Spacer()
                        .frame(height: 107)
                    LazyVGrid(columns: layout, spacing: 20) {
                        ForEach(0..<300) { index in
                            Text("\(index)")
                                .padding()
                                .frame(width: 70, height: 70)
                                .foregroundColor(Color.white)
                                .background(Color.red)
                                .cornerRadius(15)
                        }
                    }
                }
            }.padding(EdgeInsets(top: 0, leading: 8, bottom: 48, trailing: 8))
        }
    }

    var layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
