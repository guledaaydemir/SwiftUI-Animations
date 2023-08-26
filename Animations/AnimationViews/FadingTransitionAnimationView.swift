//
//  FadingTransitionAnimationView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 26.08.2023.
//

import Foundation
import SwiftUI

struct FadingTransitionAnimationView: View {
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Button(action: {
                withAnimation(.spring()) {
                    isExpanded.toggle()
                }
            }) {
                Text("More Information")
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: isExpanded ? 20 : 30) // Rounded corners
                            .fill(Color.blue)
                            .shadow(color: .black.opacity(0.3), radius: isExpanded ? 5 : 10, x: 0, y: 2) // Shadow
                    )
            }
            .padding(.horizontal)
            .padding(.bottom, 20)
            
            if isExpanded {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu ante justo. Nam nec lorem vel justo feugiat bibendum. In hac habitasse platea dictumst.")
                    .foregroundColor(.black)
                    .padding(.horizontal)
            }
            
            Spacer()
        }
    }
}
