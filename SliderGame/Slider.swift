//
//  ContentView.swift
//  SliderGame
//
//  Created by Buba on 19.12.2022.
//

import SwiftUI

struct Slider: UIViewRepresentable {
    @Binding var value: Float
    @Binding var opacity: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.value = value
        slider.maximumValue = 100
        slider.thumbTintColor = UIColor(red: 0.86, green: 0.24, blue: 0.00, alpha: CGFloat(opacity/100))
        slider.addTarget(context.coordinator, action: #selector(Coordinator.getSliderValue), for: .valueChanged)
        
        return slider
    }

    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = value
        uiView.thumbTintColor = UIColor(red: 0.86, green: 0.24, blue: 0.00, alpha: CGFloat(opacity/100))
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }
}

extension Slider {
    class Coordinator: NSObject {
        @Binding var value: Float

        init(value: Binding<Float>) {
            self._value = value
        }

        @objc func getSliderValue(_ sender: UISlider) {
            value = sender.value
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Slider(value: .constant(50), opacity: .constant(1))
    }
}
