//
//  PrivateBankerApp.swift
//  PrivateBanker
//
//  Created by ywkimMac on 2022/12/01.
//

import SwiftUI

@main
struct PrivateBankerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
