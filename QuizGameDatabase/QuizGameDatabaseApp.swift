//
//  QuizGameDatabaseApp.swift
//  QuizGameDatabase
//
//  Created by user243551 on 10/27/23.
//

import SwiftUI
import SwiftData

@main
struct QuizGameDatabaseApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            User.self,
            Esame.self,
            Quiz.self,
            DomandaQuiz.self,
            Risposta.self
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
