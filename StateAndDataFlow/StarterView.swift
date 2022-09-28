//
//  StarterView.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Турчак on 24.09.2022.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject private var user: UserManager
    @AppStorage(wrappedValue: "", "userName") var savedName
    
    var body: some View {
        Group {
            if !savedName.isEmpty {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}


struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
