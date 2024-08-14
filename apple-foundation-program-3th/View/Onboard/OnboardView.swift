//
//  OnboardView.swift
//  apple-foundation-program-3th
//
//  Created by 규연 on 8/14/24.
//

import Foundation
import SwiftUI


struct OnboardView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("E65844"), Color(.white)]),
                           startPoint: UnitPoint(x: 0.5, y: 0.4), endPoint: UnitPoint(x: 0.5, y: 1.1))
            .edgesIgnoringSafeArea(.all)
            
            Text("APPLE TIME")
                .font(.system(size: 37))
                .fontWeight(.heavy)
                .foregroundColor(Color.white)

        }

        
    }}
    
#Preview {
    OnboardView()
    }
