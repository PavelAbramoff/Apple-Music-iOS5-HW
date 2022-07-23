//
//  Apple_Music_iOS5_HWApp.swift
//  Apple-Music-iOS5-HW
//
//  Created by Pavel Абрамов on 23.07.2022.
//

import SwiftUI

@main
struct Apple_Music_iOS5_HWApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
