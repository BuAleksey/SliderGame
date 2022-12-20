//
//  GameView.swift
//  SliderGame
//
//  Created by Buba on 20.12.2022.
//

import SwiftUI

struct GameView: View {
    @State private var targetValue = Int.random(in: 0...100)
    @State private var currentValue: Float = 50
    @State private var opacity = 50
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Подвинь слайдер, как можно ближе к \(targetValue)")
                .font(.title)
                .multilineTextAlignment(.center)
            SliderView(value: $currentValue, opacity: $opacity)
            ButtonView(action: chekResult, title: "Проверь меня")
            ButtonView(action: restart, title: "Начать заново")
        }
        .padding(20)
    }
    
    private func chekResult() {

    }
    
    private func restart() {
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(Double(currentValue)))
        print(difference)
        return 100 - difference
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
