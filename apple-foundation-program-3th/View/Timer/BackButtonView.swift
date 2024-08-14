//
//  BackButtonView.swift
//  apple-foundation-program-3th
//
//  Created by Mirae on 8/14/24.
//

import SwiftUI

struct BackButtonView: View {
    var body: some View {
        NavigationLink(destination: HomeView()) {
            VStack(alignment: .leading) {
                Image(systemName: "chevron.backward")
                    .padding(.bottom)
            }
            .foregroundColor(Color("181818"))
            .font(.system(size: 35, weight: .medium))
        }
    }
}

#Preview {
    BackButtonView()
}
