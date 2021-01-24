//
//  TaskCell.swift
//  Reminders
//
//  Created by Mohamed, Ilana on 2021-01-24.
//

import SwiftUI

struct TaskCell: View {
    
    
    
    @ObservedObject var task: Task
    
    var body: some View {
        HStack {
            //When task completed show checkmark, when task not completed show circle
            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                .onTapGesture {
                    
                    
                    task.completed.toggle()
                    
                }
            
            Text(task.description)
        }
    }
}


struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(task: testData[0])
        
    }
}
