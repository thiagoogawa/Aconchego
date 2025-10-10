//
//  ExploreViewModel.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 10/10/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings()}
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("DEBUG: failed to fetching listings with error: \(error.localizedDescription)")
        }
    }
}
