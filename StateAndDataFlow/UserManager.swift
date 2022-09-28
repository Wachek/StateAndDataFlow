//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Вячеслав Турчак on 24.09.2022.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
    var numberOfSymbols: Int {
        name.count
    }
    
}
