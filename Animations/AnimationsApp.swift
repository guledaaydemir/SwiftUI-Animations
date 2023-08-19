//
//  AnimationsApp.swift
//  Animations
//
//  Created by Gul Eda Aydemir on 19.08.2023.
//

import SwiftUI

@main
struct AnimationsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
