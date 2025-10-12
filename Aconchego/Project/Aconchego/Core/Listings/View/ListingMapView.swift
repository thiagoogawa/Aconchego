//
//  ListingMapView.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 12/10/25.
//

import SwiftUI
import MapKit

struct ListingMapView: View {
    private let listings: [Listing]
    @State private var cameraPosition: MapCameraPosition
    @State private var selectedListing: Listing?
    @Environment(\.dismiss) var dismiss
    
    init(listings: [Listing], center: CLLocationCoordinate2D = .losAngeles) {
        self.listings = listings
        
        let coordinateRegion = MKCoordinateRegion(
            center: center,
            latitudinalMeters: 5000,
            longitudinalMeters: 5000
        )
        
        self._cameraPosition = State(initialValue: .region(coordinateRegion))
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Map(position: $cameraPosition, selection: $selectedListing) {
                ForEach(listings) { listing in
                    Marker("", coordinate: listing.coordinates)
                        .tag(listing.id)
                }
            }
            
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 32, height: 32)
                            .shadow(radius: 4)
                    )
                    .padding(.top, 40)
                    .padding(.leading, 32)
            }
        }
    }
}

#Preview {
    ListingMapView(listings: DeveloperPreview.shared.listings)
}
