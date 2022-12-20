//
//  GameView.swift
//  SliderGame
//
//  Created by Buba on 20.12.2022.
//

import SwiftUI

struct GameView: View {
    @State private var targetValue = Int.random(in: 5...95)
    @State private var currentValue: Float = 0
    @State private var opacity = 50.0
    @State private var alertIsPresented  = false
    
    var result: Int {
        computeScore()
    }
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Подвинь слайдер, как можно ближе к \(targetValue)")
                .font(.title)
                .multilineTextAlignment(.center)
            
            SliderView(value: $currentValue, opacity: $opacity)
                .onChange(of: currentValue) { newValue in
                    opacity = Double(result)
                    print(opacity)
                }
            
            ButtonView(action: chekResult, title: "Проверь меня")
                .alert("Ваш результат: \(result)", isPresented: $alertIsPresented, actions: {})
            
            ButtonView(action: restart, title: "Начать заново")
        }
        .padding(20)
    }
    
    private func chekResult() {
        alertIsPresented.toggle()
    }
    
    private func restart() {
        targetValue = Int.random(in: 5...95)
        currentValue = 0
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(Double(currentValue)))
        return 100 - difference
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
