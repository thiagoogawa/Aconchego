//
//  MockAuthService.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 15/10/25.
//

import Foundation

struct MockAuthService: AuthServiceProtocol {
    func login(withEmail email: String, password: String) async throws -> String? {
        return NSUUID().uuidString
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String? {
        return NSUUID().uuidString
    }
    
    func signOut() {
        
    }
}
