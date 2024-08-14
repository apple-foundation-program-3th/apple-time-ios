//
//  HomeView.swift
//  apple-foundation-program-3th
//
//  Created by dgsw8th07 on 8/14/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView{
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("E65844"), Color(.white)]),
                               startPoint: UnitPoint(x: 0.5, y: 0.15), endPoint: UnitPoint(x: 0.5, y: 0.6))
                .edgesIgnoringSafeArea(.all)
                
                VStack{
                    VStack(alignment: .leading){
                        Text("반가워요,")
                        Text("애플 파운데이션 러너분들!")
                    }
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 20.0)
                    .padding(.trailing, 100)
                    .padding(.top, 100)
                    
                    HomeButtonView()
                    
                    AppleBoardView(appleCount: 0)
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeView()
}
