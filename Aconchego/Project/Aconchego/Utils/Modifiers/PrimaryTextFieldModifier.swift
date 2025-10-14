//
//  PrimaryTextFieldModifier.swift
//  Aconchego
//
//  Created by Thiago Ogawa on 14/10/25.
//

import SwiftUI

struct PrimaryTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}


