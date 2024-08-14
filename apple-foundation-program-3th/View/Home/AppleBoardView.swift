//
//  AppleBoardView.swift
//  apple-foundation-program-3th
//
//  Created by dgsw8th07 on 8/14/24.
//

import SwiftUI

struct AppleBoardView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 335, height: 248)
            .foregroundColor(.white)
            .shadow(radius: 4)
    }
}

#Preview {
    AppleBoardView()
}
