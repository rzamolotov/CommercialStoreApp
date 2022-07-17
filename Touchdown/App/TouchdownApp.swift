//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Роман Замолотов on 16.07.2022.
//

import SwiftUI

@main
struct TouchdownApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
