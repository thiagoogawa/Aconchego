//
//  WishlistsView.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 10/10/25.
//

import SwiftUI

struct WishlistsView: View {
    @State private var showLogin = false
    
    @ObservedObject var authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                if authManager.userSessionId == nil {
                    VStack(alignment: .leading, spacing: 32) {
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Log in to view your wishlists")
                                .font(.headline)
                            
                            Text("You can create, view or edit wishlists once you've logged in")
                                .font(.footnote)
                        }
                        
                        Button {
                            showLogin.toggle()
                        } label: {
                            Text("Log in")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 360, height: 48)
                                .background(.pink)
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                        }
                        
                        Spacer()
                    }
                } else {
                    Text("Show wishlists here...")
                }
            }
            .sheet(isPresented: $showLogin, content: {
                LoginView(authManager: authManager)
            })
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistsView(authManager: AuthManager(service: MockAuthService()))
}
