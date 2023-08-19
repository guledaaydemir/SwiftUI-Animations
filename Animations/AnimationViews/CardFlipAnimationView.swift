//
//  CardFlipAnimationView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 19.08.2023.
//

import Foundation
import SwiftUI

class Card: Identifiable, ObservableObject {
    let id = UUID()
    let frontImageName: String
    let backImageName: String
    @Published var isFlipped: Bool = false

    init(frontImageName: String, backImageName: String) {
        self.frontImageName = frontImageName
        self.backImageName = backImageName
    }
}

struct CardView: View {
    @ObservedObject var card: Card

    var body: some View {
        Image(card.isFlipped ? card.backImageName : card.frontImageName)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            .rotation3DEffect(
                .degrees(card.isFlipped ? 180 : 0),
                axis: (x: 0, y: 1, z: 0)
            )
            .animation(.easeInOut)
            .onTapGesture {
                withAnimation(.easeInOut) {
                    card.isFlipped.toggle()
                }
            }
    }
}

struct CardFlipAnimationView: View {
    @StateObject var card1 = Card(frontImageName: "tarot_front", backImageName: "tarot_back")
    // Add more card objects here

    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()

                CardView(card: card1)
                    .transition(.scale)

                Spacer()

            }
        }
    }
}

