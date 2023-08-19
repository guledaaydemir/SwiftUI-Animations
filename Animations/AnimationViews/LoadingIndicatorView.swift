//
//  LoadingIndicatorView.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 19.08.2023.
//

import Foundation
import SwiftUI

struct LoadingIndicatorView: View {
    @State private var isLoading = true

    var body: some View {
        VStack {
            if isLoading {
                ProgressView("Loading...")
                    .onAppear {
                        simulateLoading()
                    }
            } else {
                Text("Loaded!")
            }
        }
    }

    private func simulateLoading() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isLoading = false
        }
    }
}


