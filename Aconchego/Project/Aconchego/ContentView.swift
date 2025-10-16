//
//  ContentView.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 21/09/25.
//

import SwiftUI

struct ContentView: View {
    private let authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        MainTabView(authManager: authManager)
    }
}

#Preview {
    ContentView(authManager: AuthManager(service: MockAuthService()))
}
