//
//  LiquidAnimationView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 26.08.2023.
//

import Foundation
import SwiftUI
import Liquid

struct LiquidAnimationView: View {
    @State private var yOffset1: CGFloat = 0
    @State private var yOffset2: CGFloat = 0

    var body: some View {
        ZStack {
            LiquidView(radius: 120, opacity: 0.3, yOffset: yOffset1)
            LiquidView(radius: 110, opacity: 0.6, yOffset: -yOffset1)
            LiquidView(radius: 100, yOffset: yOffset1)
            
            LiquidView(radius: 100, opacity: 0.3, yOffset: yOffset2)
            LiquidView(radius: 90, opacity: 0.6, yOffset: -yOffset2)
            LiquidView(radius: 80, yOffset: yOffset2)
            
            Text("Liquid")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .rotationEffect(.degrees(yOffset1 * 2)) // Apply rotation based on yOffset1
        .onAppear() {
            withAnimation(Animation.easeInOut(duration: 2).repeatForever()) {
                yOffset1 = 20
            }
            withAnimation(Animation.easeInOut(duration: 1.5).repeatForever().delay(0.5)) {
                yOffset2 = 15
            }
        }
    }
}

struct LiquidView: View {
    var radius: CGFloat
    var opacity: Double = 1.0
    var yOffset: CGFloat = 0

    var body: some View {
        Liquid()
            .frame(width: radius * 2, height: radius * 2)
            .foregroundColor(.black)
            .opacity(opacity)
            .offset(y: yOffset)
    }
}
