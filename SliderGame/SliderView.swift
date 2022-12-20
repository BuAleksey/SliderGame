//
//  SliderView.swift
//  SliderGame
//
//  Created by Buba on 20.12.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Float
    @Binding var opacity: Int
    
    var body: some View {
        Slider(value: $value, opacity: $opacity)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(50), opacity: .constant(1))
    }
}
