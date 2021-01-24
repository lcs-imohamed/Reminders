//
//  Task.swift
//  Reminders (iOS)
//
//  Created by Mohamed, Ilana on 2021-01-24.
//

import Foundation

//Create structure task with variables and that is identifiable
class Task: Identifiable, ObservableObject {
    var id = UUID()
    var description: String
    var priority: TaskPriority
    @Published var completed: Bool
    
    internal init(id: UUID = UUID(), description: String, priority: TaskPriority, completed: Bool) {
        self.id = id
        self.description = description
        self.priority = priority
        self.completed = completed
    }
    
}

//Make instance of array
let testData = [
    Task(description: "Grow long hair", priority: .high, completed: true),
    Task(description: "Get modelling contract", priority: .medium, completed: false),
    Task(description: "Retire from teaching", priority: .low, completed: false),
]

