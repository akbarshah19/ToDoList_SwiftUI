//
//  ToDoListVM.swift
//  ToDoList_SwiftUI
//
//  Created by Akbarshah Jumanazarov on 5/10/23.
//

import Foundation
import FirebaseFirestore

class ToDoListVM: ObservableObject {
    
    @Published var showingNewItem = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete ToDoList item
    /// - Parameter id: item ID to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
