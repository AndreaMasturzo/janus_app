//
//  JanusAppApp.swift
//  JanusApp
//
//  Created by Andrea Masturzo on 19/07/24.
//

import SwiftUI

@main
struct JanusAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
