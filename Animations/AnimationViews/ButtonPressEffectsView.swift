//
//  ButtonPressEffectsView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 19.08.2023.
//

import Foundation
import SwiftUI

struct ButtonPressEffectsView: View {
    @State private var buttonScale1: CGFloat = 1.0
    @State private var shadowRadius1: CGFloat = 0
    @State private var rotationAngle: Double = 0
    @State private var buttonScale3: CGFloat = 1.0
    @State private var shadowRadius3: CGFloat = 0
    @State private var buttonScale4: CGFloat = 1.0
    @State private var buttonScale5: CGFloat = 1.0

    var body: some View {
        VStack(spacing: 20) {
            AnimatedButton(title: "Scale & Shadow", color: .blue) {
                buttonScale1 = buttonScale1 == 1.0 ? 0.8 : 1.0
                shadowRadius1 = buttonScale1 == 1.0 ? 0 : 10
            }
            .scaleEffect(buttonScale1)
            .animation(.spring())

            Button(action: {
                withAnimation(.spring()) {
                    rotationAngle += 45
                }
            }) {
                Text("Rotation")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(RotatingButtonStyle(color: .green))

            AnimatedButton(title: "Press & Release", color: .purple) {
                buttonScale3 = buttonScale3 == 1.0 ? 0.9 : 1.0
                shadowRadius3 = buttonScale3 == 1.0 ? 0 : 5
            }
            .scaleEffect(buttonScale3)
            .animation(.spring())

            AnimatedButton(title: "Continuous Animation", color: .red) {
                buttonScale4 = buttonScale4 == 1.0 ? 0.8 : 1.0
            }
            .scaleEffect(buttonScale4)
            .animation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true))
            
            AnimatedButton(title: "Bounce Animation", color: .orange) {
                            buttonScale5 = 0.5
                            withAnimation(.interpolatingSpring(stiffness: 80, damping: 5)) {
                                buttonScale5 = 1.0
                            }
                        }
                        .scaleEffect(buttonScale5)
                        .animation(.spring())
        }
        .padding(.vertical, 20)
    }
}

struct AnimatedButton: View {
    let title: String
    let color: Color
    let action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }) {
            Text(title)
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(DynamicButtonStyle(color: color))
    }
}

struct DynamicButtonStyle: ButtonStyle {
    let color: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 2)
                            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
                    )
            )
            .foregroundColor(.white)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .shadow(color: .black.opacity(configuration.isPressed ? 0 : 0.3), radius: 10, x: 0, y: 5)
    }
}

struct RotatingButtonStyle: ButtonStyle {
    let color: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(color)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 2)
                            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
                    )
            )
            .foregroundColor(.white)
            .rotationEffect(.degrees(configuration.isPressed ? 45 : 0))
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .shadow(color: .black.opacity(configuration.isPressed ? 0 : 0.3), radius: 10, x: 0, y: 5)
    }
}
