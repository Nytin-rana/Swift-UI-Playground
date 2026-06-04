//
//  SwiftUI_PlaygroundApp.swift
//  SwiftUI Playground
//
//  Created by Nytin Rana on 04/06/26.
//

import SwiftUI
import SwiftData

@main
struct SwiftUI_PlaygroundApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
