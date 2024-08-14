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
                LinearGradient(gradient: Gradient(colors: [Color(.red), Color(.white)]),
                               startPoint: .top, endPoint: UnitPoint(x: 0.5, y: 0.6))
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
                    .padding(.top, 60)
                    
                    HomeButtonView()
                    
                    VStack(alignment: .leading){
                        Text("내가 모은 사과👀")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.bottom, 1)
                        Text("목표를 총 8번 달성하셨네요!")
                            .font(.title3)
                            .fontWeight(.regular)
                    }
                    .padding(.top, 30)
                    .padding(.trailing, 100)
                    
                    AppleBoardView()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
