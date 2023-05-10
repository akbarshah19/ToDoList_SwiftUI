//
//  HeaderView.swift
//  ToDoList_SwiftUI
//
//  Created by Akbarshah Jumanazarov on 5/10/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.pink)
                    .rotationEffect(Angle(degrees: 15))
                VStack {
                    Text("To Do List")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .bold()
                    
                    Text("Get Things Done")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                }
                .padding(.top, 50)
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(y: -120)
            
            
            Spacer()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
