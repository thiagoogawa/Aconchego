//
//  ExploreService.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 10/10/25.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
