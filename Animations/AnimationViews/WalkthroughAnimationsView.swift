//
//  WalkthroughAnimationsView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 19.08.2023.
//

import Foundation
import SwiftUI

struct WalkthroughAnimationsView: View {
    @State private var currentStep: Int = 0

    let walkthroughSteps = [
        WalkthroughStep(imageName: "tarot_front", title: "Step 1", description: "Welcome to Step 1!"),
        WalkthroughStep(imageName: "tarot_back", title: "Step 2", description: "Discover the amazing features in Step 2!"),
        // Add more steps as needed
    ]

    var body: some View {
        VStack {
            Image(walkthroughSteps[currentStep].imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .offset(y: bounceOffset)

            Text(walkthroughSteps[currentStep].title)
                .font(.title)

            Text(walkthroughSteps[currentStep].description)
                .multilineTextAlignment(.center)
                .padding()
            
            Button(action: {
                withAnimation(Animation.spring()) {
                    currentStep = (currentStep + 1) % walkthroughSteps.count
                }
            }) {
                Text("Next")
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }

    private var bounceOffset: CGFloat {
        let bounceHeight: CGFloat = 20
        return currentStep % 2 == 0 ? 0 : -bounceHeight
    }
}

struct WalkthroughStep {
    let imageName: String
    let title: String
    let description: String
}

