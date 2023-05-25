//
//  PopUpView.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 25.05.2023..
//

import SwiftUI

struct PopUpView: View {

    var title: String
    var message: String
    var buttonText: String

    @Binding var shouldShow: Bool

    var body: some View {
        ZStack {
            if shouldShow {
                Color.black.opacity(shouldShow ? 0.3 : 0).edgesIgnoringSafeArea(.all)

                VStack(alignment: .center, spacing: 0) {
                    Text(title)
                        .frame(maxWidth: .infinity)
                        .frame(height: 45, alignment: .center)
                        .font(Font.system(size: 23, weight: .semibold))
                        .foregroundColor(Color.white)
                        .background(Color.gray.opacity(0.7))
                    Text(message)
                        .multilineTextAlignment(.center)
                        .font(Font.system(size: 16, weight: .semibold))
                        .padding(EdgeInsets(top: 20, leading: 25, bottom: 20, trailing: 25))
                        .foregroundColor(Color.white)
                    Button(action: {
                        // Dismiss the PopUpView
                        withAnimation(.linear(duration: 0.3)) {
                            shouldShow = false
                        }
                    }, label: {
                        Text(buttonText)
                            .frame(maxWidth: .infinity)
                            .frame(height: 54, alignment: .center)
                            .foregroundColor(Color.white)
                            .background(Color.gray.opacity(0.7))
                            .font(Font.system(size: 23, weight: .semibold))
                    }).buttonStyle(PlainButtonStyle())
                }
                .frame(maxWidth: 300)
                .border(Color.white, width: 2)
                .background(Color.blue)
            }
        }.animation(.easeIn, value: shouldShow)
    }
}
