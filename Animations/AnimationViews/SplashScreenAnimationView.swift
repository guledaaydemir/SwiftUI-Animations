//
//  SplashScreenAnimationView.swift .swift
//  Animations
//
//  Created by Gul Eda Aydemir on 19.08.2023.
//

import Foundation
import SwiftUI

struct SplashScreenAnimationView: View {
    @State private var logoScale: CGFloat = 0.2
    @State private var logoOpacity: Double = 0.0

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.6), Color.black.opacity(0.2)]),
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()

                Image("logo_app")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(logoScale)
                    .opacity(logoOpacity)
                    .animation(.spring(response: 1.0, dampingFraction: 0.6))
                    .onAppear {
                        withAnimation(Animation.easeInOut(duration: 1.5)) {
                            logoScale = 0.8
                            logoOpacity = 1.0
                        }
                    }

                Spacer()
            }
        }
    }
}

