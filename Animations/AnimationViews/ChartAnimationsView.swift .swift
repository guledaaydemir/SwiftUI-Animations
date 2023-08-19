//
//  ChartAnimationsView.swift .swift
//  Animations
//
//  Created by Gul Eda Aydemir on 19.08.2023.
//

import Foundation
import SwiftUI

struct ChartAnimationsView: View {
    @State private var chartData: [Double] = [10, 25, 15, 30, 20, 35, 45]
    @State private var isAnimating = false

    var body: some View {
        VStack {
            if isAnimating {
                WaveBarChartView(data: chartData)
                    .transition(.scale) // Apply a transition animation
                
                Button("Dismiss Chart") {
                    withAnimation {
                        isAnimating.toggle()
                    }
                }
                .padding()
            } else {
                Button("Animate Chart") {
                    withAnimation(.interpolatingSpring(stiffness: 20, damping: 5)) {
                        isAnimating.toggle()
                    }
                }
            }
        }
    }
}


struct WaveBarChartView: View {
    let data: [Double]
    let maxValue: Double

    init(data: [Double]) {
        self.data = data
        self.maxValue = data.max() ?? 1.0
    }

    var body: some View {
        HStack(spacing: 12) {
            ForEach(data, id: \.self) { value in
                VStack {
                    WaveView(value: value / maxValue)
                        .frame(height: 150)
                    Text("\(Int(value))")
                }
            }
        }
        .padding(.horizontal)
    }
}

struct WaveView: View {
    var value: Double
    @State private var yOffset: CGFloat = 0

    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.black)
            .frame(width: 30, height: 150)
            .offset(y: 30 * CGFloat(value) * CGFloat(sin(yOffset)))
            .onAppear {
                withAnimation(Animation.linear(duration: 2).repeatForever()) {
                    yOffset += .pi * 0.05
                }
            }
    }
}
