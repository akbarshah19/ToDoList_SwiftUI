//
//  SwiftUIView.swift
//  ToDoList_SwiftUI
//
//  Created by Akbarshah Jumanazarov on 5/10/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack{
                HeaderView()
                
                Form {
                    TextField("Email Address", text: $email)
                    SecureField("Password", text: $password)
                    
                    Button {
                        //Attempt to log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            
                            Text("Log in")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                }
                
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
