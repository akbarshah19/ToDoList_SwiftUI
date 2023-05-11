//
//  SwiftUIView.swift
//  ToDoList_SwiftUI
//
//  Created by Akbarshah Jumanazarov on 5/10/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginVM()
    
    var body: some View {
        NavigationView {
            VStack{
                HeaderView(title: "To Do List",
                           subTitle: "Get Things Done",
                           angle: 15,
                           backgroundColor: .pink)
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                    
                    TLButton(title: "Log In", backgroundColor: .blue) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
