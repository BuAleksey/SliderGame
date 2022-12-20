//
//  ButtonView.swift
//  SliderGame
//
//  Created by Buba on 20.12.2022.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let title: String
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title2)
                .foregroundColor(.black)
        }
        .overlay(RoundedRectangle(cornerRadius: 15)
            .stroke(.black, lineWidth: 0.5)
            .frame(width: 200)
        )
        .shadow(radius: 5)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, title: "Проверь меня")
    }
}
