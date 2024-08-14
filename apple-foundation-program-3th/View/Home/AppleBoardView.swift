//
//  AppleBoardView.swift
//  apple-foundation-program-3th
//
//  Created by dgsw8th07 on 8/14/24.
//

import SwiftUI

struct AppleBoardView: View {
    var appleCount: Int
    var attributedString: AttributedString {
      var string = AttributedString("목표를 총 \(appleCount)번 달성하셨네요!")
    
      if let this = string.range(of: "\(appleCount)") {
        string[this].foregroundColor = Color("E65844")
      }
            
      return string
    }

    
    
    
    var body: some View {
        VStack(alignment: .leading){
            Text("내가 모은 사과👀")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.bottom, 1)
            Text(attributedString)
                .font(.title3)
                .fontWeight(.regular)
        }
        .padding(.top, 30)
        .padding(.trailing, 100)
        
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 335, height: 248)
            .foregroundColor(.white)
            .shadow(radius: 4)
    }
}

#Preview {
    AppleBoardView(appleCount: 8)
}
