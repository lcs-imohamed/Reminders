//
//  ContentView.swift
//  Shared
//
//  Created by Mohamed, Ilana on 2021-01-24.
//

import SwiftUI

struct ContentView: View {
    
  
    
    //Stores all tasks that are being tracked
    @ObservedObject var store: TaskStore
    
    // controls whether the add task is showing
    @State private var showingAddTask = false
    
    
    var body: some View {
        List(store.tasks) { task in
            TaskCell(task: task)
        }
        .navigationTitle("Reminders")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    showingAddTask = true
                }
            }
        }
        .sheet(isPresented: $showingAddTask) {
            AddTask(store: store, showing: $showingAddTask)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(store: testStore)
        }
        
    }
}
