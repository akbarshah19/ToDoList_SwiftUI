//
//  ContentView.swift
//  ToDoList_SwiftUI
//
//  Created by Akbarshah Jumanazarov on 5/10/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
