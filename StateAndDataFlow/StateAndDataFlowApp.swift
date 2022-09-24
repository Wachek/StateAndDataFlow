//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Турчак on 23.09.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
