//
//  RoundView.swift
//  SignalUI
//
//  Created by Влад Руденко on 08.06.2024.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 125, height: 125)
            .overlay(Circle().stroke(Color(white: 0, opacity: 100)))
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
    }
}

#Preview {
    CircleView(color: .green, opacity: 1)
}
