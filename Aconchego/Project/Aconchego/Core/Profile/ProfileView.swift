//
//  ProfileView.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 10/10/25.
//

import SwiftUI

struct ProfileView: View {
    @ObservedObject var authManager: AuthManager
    @State private var showLogin = false
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        VStack {
            // profile login view
            if authManager.userSessionId == nil {
                VStack(alignment: .leading, spacing: 32) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Profile")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                        
                        Text("Log in to start planning your next trip")
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
                    
                    HStack {
                        Text("Don't have an account?")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                            .underline()
                    }
                    .font(.caption)
                }
            } else {
                Text("Show profile stuff here..")
            }
            
            // profile options
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        }
        .sheet(isPresented: $showLogin, content: {
            LoginView(authManager: authManager)
        })
        .padding()
    }
}

#Preview {
    ProfileView(authManager: AuthManager(service: MockAuthService()))
}
