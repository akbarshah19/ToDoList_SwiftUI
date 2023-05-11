//
//  RegisterView.swift
//  ToDoList_SwiftUI
//
//  Created by Akbarshah Jumanazarov on 5/10/23.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterVM()
    
    var body: some View {
        NavigationView {
            VStack{
                HeaderView(title: "Register", subTitle: "The Best Organizer", angle: -15, backgroundColor: .orange)
                
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Full Name", text: $viewModel.name)
                        .autocorrectionDisabled()
                    TextField("Email Address", text: $viewModel.email)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                    
                    TLButton(title: "Register", backgroundColor: .green) {
                        viewModel.register()
                    }
                }
                .offset(y: -50)
                
                Spacer()
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
