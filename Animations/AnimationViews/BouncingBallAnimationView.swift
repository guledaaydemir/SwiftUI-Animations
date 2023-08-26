//
//  BouncingBallAnimationView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 26.08.2023.
//

import Foundation
import SwiftUI


// Only ball
/*struct BouncingBallAnimationView: View {
    @State private var yOffset: CGFloat = 0

    var body: some View {
        Circle()
            .frame(width: 50, height: 50)
            .foregroundColor(.blue)
            .offset(y: yOffset)
            .animation(
                Animation.easeInOut(duration: 1)
                    .repeatForever(autoreverses: true)
            )
            .onAppear() {
                yOffset = 100
            }
    }
}*/

// Basketball Emoji
struct BouncingBallAnimationView: View {
    @State private var yOffset: CGFloat = 0

    var body: some View {
        Text("🏀")
            .font(.system(size: 50))
            .offset(y: yOffset)
            .animation(
                Animation.easeInOut(duration: 1)
                    .repeatForever(autoreverses: true)
            )
            .onAppear() {
                yOffset = 100
            }
    }
}
