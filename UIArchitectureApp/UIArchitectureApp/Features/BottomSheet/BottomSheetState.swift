//
//  BottomSheetState.swift
//  UIArchitectureApp
//
//  Created by Matija Kruljac on 26.05.2023..
//

import Foundation

final class BottomSheetState: ObservableObject {

    @Published var counter: Int = 0
    @Published var shouldBeClosed: Bool = false
}
