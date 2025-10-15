//
//  MapListingPreviewView.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 13/10/25.
//

import SwiftUI

struct ListingMapPreviewView: View {
    let listing: Listing
    
    var body: some View {
        VStack {
            TabView {
                ForEach(listing.imageURLs, id: \.self) { imageUrl in
                    Image(imageUrl)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Rectangle())
                }
            }
            .frame(height: 200)
            .tabViewStyle(.page)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                    
                    Text("7 nights: Dec 12 - 20")
                    
                    HStack(spacing: 4) {
                        Text("$567")
                            .fontWeight(.semibold)
                        
                        Text("night")
                    }
                }
                Spacer()
                
                Text(listing.rating.formatted(.number.precision(.fractionLength(2))))
            }
            .font(.footnote)
            .padding(8)
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding()
    }
}

#Preview {
    ListingMapPreviewView(listing: DeveloperPreview.shared.listings[0])
}
