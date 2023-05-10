//
//  ToDoList_SwiftUIApp.swift
//  ToDoList_SwiftUI
//
//  Created by Akbarshah Jumanazarov on 5/10/23.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoList_SwiftUIApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
