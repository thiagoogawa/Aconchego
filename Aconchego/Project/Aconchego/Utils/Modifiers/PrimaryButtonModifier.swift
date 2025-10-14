//
//  PrimaryButtonModifier.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 14/10/25.
//

import SwiftUI

struct PrimaryButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(width: 352, height: 44)
            .background(Color(.systemPink))
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
