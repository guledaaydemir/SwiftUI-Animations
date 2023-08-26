//
//  ModalPresentationView.swift .swift
//  Animations
//
//  Created by Gul Eda Aydemir on 19.08.2023.
//

import Foundation
import SwiftUI

struct ModalPresentationView: View {
    @State private var isModalPresented = false

    var body: some View {
        VStack {
            Button("Present Modal") {
                isModalPresented.toggle()
            }
            .sheet(isPresented: $isModalPresented) {
                ModalContentView(isPresented: $isModalPresented)
            }
        }
    }
}

struct ModalContentView: View {
    @Binding var isPresented: Bool // Binding to control modal dismissal

    var body: some View {
        VStack {
            Text("This is a modal view!")
                .padding()
                .background(Color.gray)
                .cornerRadius(10)

            Button("Dismiss") {
                isPresented = false // Close the modal when tapped
            }
            .padding()
        }
    }
}


