//
//  SliderGameApp.swift
//  SliderGame
//
//  Created by Buba on 19.12.2022.
//

import SwiftUI

@main
struct SliderGameApp: App {
    var body: some Scene {
        WindowGroup {
            Slider(value: .constant(50), opacity: .constant(1))
        }
    }
}
