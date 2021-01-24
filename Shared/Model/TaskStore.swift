//
//  TaskStore.swift
//  Reminders (iOS)
//
//  Created by Mohamed, Ilana on 2021-01-24.
//

import Foundation

class TaskStore: ObservableObject {
    @Published var tasks: [Task]
    
    init(tasks: [Task] = []) {
        self.tasks= tasks
    }
}

let testStore = TaskStore(tasks: testData)
