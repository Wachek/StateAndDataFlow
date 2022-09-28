//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Турчак on 23.09.2022.
//

import SwiftUI

struct RegisterView: View {
    
    @State private var userName = ""
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $userName)
                    .multilineTextAlignment(.center)
                Group {
                    if userName.count > 2 {
                        Text("\(userName.count)")
                            .foregroundColor(.green)
                    } else {
                        Text("\(userName.count)")
                            .foregroundColor(.red)
                    }
                }
                .padding(.trailing, 50)
            }
            Group {
                if userName.count > 2 {
                    Button(action: registerUser) {
                        HStack{
                            Image(systemName: "checkmark.circle")
                            Text("OK")
                        }
                    }
                } else {
                    HStack {
                        Image(systemName: "checkmark.circle")
                        Text("OK")
                    }
                }
            }
        }
    }
    
    private func registerUser() {
        if !userName.isEmpty {
            user.name = userName
            user.isRegistered.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
