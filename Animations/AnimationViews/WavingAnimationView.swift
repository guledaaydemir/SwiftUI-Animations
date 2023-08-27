//
//  WavingAnimationView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 27.08.2023.
//

import Foundation
import SwiftUI

struct Wave: Shape {
    var strength: Double
    var frequency: Double
    var phase: Double

    var animatableData: Double {
        get { phase }
        set { self.phase = newValue }
    }

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath()

        let width = Double(rect.width)
        let height = Double(rect.height)
        let midWidth = width / 2
        let midHeight = height / 2
        let wavelength = width / frequency
        let oneOverMidWidth = 1 / midWidth

        path.move(to: CGPoint(x: 0, y: midHeight))

        for x in stride(from: 0, through: width, by: 1) {
            let relativeX = x / wavelength
            let distanceFromMidWidth = x - midWidth
            let normalDistance = oneOverMidWidth * distanceFromMidWidth
            let parabola = -(normalDistance * normalDistance) + 1
            let sine = sin(relativeX + phase)
            let y = parabola * strength * sine + midHeight
            path.addLine(to: CGPoint(x: x, y: y))
        }

        return Path(path.cgPath)
    }
}

struct WavingAnimationView: View {
    @State private var phase: Double = 0

    var body: some View {
        VStack {
            Wave(strength: 30, frequency: 30, phase: phase)
                .stroke(Color.blue, lineWidth: 4)
                .frame(height: 150)
                .padding(.horizontal)
                .onAppear() {
                    withAnimation(Animation.easeInOut(duration: 3).repeatForever()) {
                        self.phase = .pi * 2
                    }
                }
        }
        .navigationBarTitle("Waving Animation")
    }
}






