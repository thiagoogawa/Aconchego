//
//  MainTabView.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 10/10/25.
//

import SwiftUI

struct MainTabView: View {
    
    private let authManager: AuthManager
    
    init(authManager: AuthManager) {
        self.authManager = authManager
    }
    
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {Label("Explore", systemImage: "magnifyingglass")}
            
            WishlistsView(authManager: authManager)
                .tabItem {Label("Wishlists", systemImage: "heart")}
            
            ProfileView(authManager: authManager)
                .tabItem {Label("Profile", systemImage: "person")}
        }
    }
}

#Preview {
    MainTabView(authManager: AuthManager(service: MockAuthService()))
}
