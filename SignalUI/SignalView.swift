//
//  ContentView.swift
//  SignalUI
//
//  Created by Влад Руденко on 08.06.2024.
//

import SwiftUI

struct SignalView: View {
    @State private var buttonText = "Start"
    @State private var opacityRed = 0.5
    @State private var opacityYellow = 0.5
    @State private var opacityGreen = 0.5
    
    var body: some View {
        VStack(spacing: 25) {
            CircleView(color: .red, opacity: opacityRed)
            CircleView(color: .yellow, opacity: opacityYellow)
            CircleView(color: .green, opacity: opacityGreen)
            Spacer()
            ButtonView(buttonText: buttonText, action: turnOnSignal)
        }
        .padding()
    }
    
    private func turnOnSignal() {
        let opacityCheck = 1.0
        switch opacityCheck {
        case opacityRed:
            opacityRed = 0.5
            opacityYellow = 1.0
        case opacityYellow:
            opacityYellow = 0.5
            opacityGreen = 1.0
        case opacityGreen:
            opacityGreen = 0.5
            opacityRed = 1.0
        default:
            buttonText = "Next"
            opacityRed = 1.0
        }
    }
    
}

#Preview {
    SignalView()
}
