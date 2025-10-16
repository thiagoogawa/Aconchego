//
//  AconchegoApp.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 21/09/25.
//

import SwiftUI

@main
struct AconchegoApp: App {
    let authManager = AuthManager(service: FirebaseAuthService())
    
    var body: some Scene {
        WindowGroup {
            ContentView(authManager: authManager)
        }
    }
}
