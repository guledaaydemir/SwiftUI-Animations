//
//  ParallaxScrollingView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 19.08.2023.
//

import Foundation
import SwiftUI

struct ParallaxScrollingView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                // Vibrant Background
                Color("Background")
                    .frame(height: 250) // Height of the parallax background
                    .overlay(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.gray, Color("Overlay")]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .frame(height: 250) // Height of the overlay
                    )
                    .overlay(
                        Image(systemName: "music.note.list")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .offset(y: 30) // Adjust icon position
                    )
                    .offset(y: -30) // Adjust the vertical offset as needed

                // Other Content
                VStack(spacing: 20) {
                    ForEach(1...30, id: \.self) { index in
                        Text("Item \(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity, maxHeight: 100)
                            .background(Color.black) // Use your desired card background color here
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                    }
                }
            }
        }
        .background(Color("Grey")) // Use your preferred background color
        .ignoresSafeArea()
    }
}



