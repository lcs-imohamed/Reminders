//
//  RemindersApp.swift
//  Shared
//
//  Created by Mohamed, Ilana on 2021-01-24.
//

import SwiftUI

@main
struct RemindersApp: App {
    
    @StateObject private var store = TaskStore(tasks: testData)
    
    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
