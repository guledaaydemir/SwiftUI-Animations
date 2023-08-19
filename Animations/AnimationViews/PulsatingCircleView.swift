//
//  PulsatingCircleView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 19.08.2023.
//

import Foundation
import SwiftUI

struct PulsatingCircleView: View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        Circle()
            .foregroundColor(.black)
            .frame(width: 100 * scale, height: 100 * scale)
            .scaleEffect(scale)
            .animation(
                Animation.easeInOut(duration: 1)
                    .repeatForever(autoreverses: true)
            )
            .onAppear {
                self.scale = 1.2
            }
    }
}
