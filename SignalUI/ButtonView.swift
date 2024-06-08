//
//  ButtonView.swift
//  SignalUI
//
//  Created by Влад Руденко on 08.06.2024.
//

import SwiftUI

struct ButtonView: View {
    let buttonText: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(buttonText)
                .font(.largeTitle)
                .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 40))
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.white, lineWidth: 5))
        .shadow(radius: 10)
    }
}

#Preview {
    ButtonView(buttonText: "Hello", action: {})
}
