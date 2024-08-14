//
//  StopButtonView.swift
//  apple-foundation-program-3th
//
//  Created by Mirae on 8/14/24.
//

import SwiftUI

struct StopButtonView: View {
    var body: some View {
        NavigationLink(destination: HomeView()) {
            ZStack {
                Circle()
                    .frame(width: 75)
                    .foregroundColor(Color("E65844"))
                
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 28, height: 28)
                    .foregroundColor(.white)
            }
            .font(.system(size: 35, weight: .medium))
        }
    }
}

#Preview {
    StopButtonView()
}
