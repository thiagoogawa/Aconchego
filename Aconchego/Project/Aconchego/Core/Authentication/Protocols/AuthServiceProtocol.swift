//
//  AuthServiceProtocol.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 16/10/25.
//

import Foundation

protocol AuthServiceProtocol {
    func login(withEmail email: String, password: String) async throws -> String?
    func createUser(withEmail email: String, password: String, fullname: String) async throws -> String?
    func signOut()
}
