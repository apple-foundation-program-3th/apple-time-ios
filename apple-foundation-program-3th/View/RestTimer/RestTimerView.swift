//
//  RestTimerView.swift
//  apple-foundation-program-3th
//
//  Created by Mirae on 8/14/24.
//

import SwiftUI

struct RestTimerView: View {
    var body: some View {
        NavigationView{
            VStack{
                BackButtonView()
                    .offset(x:-150)
                
                Text("휴식 시간")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("181818"))
                    .padding(.bottom, 60)
                    .padding(.trailing, 230)
                
                ZStack{
                    Circle()
                        .trim(from: 0, to: 1)
                        .stroke(Color.black.opacity(0.09), style: StrokeStyle(lineWidth: 35, lineCap: .round))
                        .frame(width: 280, height: 280)
                    Circle()
                        .trim(from: 0, to: 0.05)
                        .stroke(Color("AEF45D"), style: StrokeStyle(lineWidth: 35, lineCap: .round))
                        .frame(width: 280, height: 280)
                        .rotationEffect(.init(degrees: -90))
                    
                    VStack{
                        Text("타임아웃까지")
                            .font(.system(size: 19))
                            .foregroundColor(Color("181818"))
                            .fontWeight(.medium)
                        Text("00:19:30")
                            .font(.system(size: 47))
                            .foregroundColor(Color("181818"))
                            .fontWeight(.bold)
                    }
                }
                .padding(.top, 10)
                .padding(.bottom, 60)
                
                HStack{
                    VStack{
                        Text("설정 목표 시간")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black.opacity(0.25))
                            .padding(.bottom, 0.5)
                        
                        Text("01:00:00")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(.bottom, 0.5)
                        
                        Text("수정하기")
                            .fontWeight(.medium)
                            .foregroundColor(Color("5DD066"))
                    }
                    .padding(.trailing, 40)
                    
                    VStack{
                        Text("설정 휴식 시간")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black.opacity(0.25))
                            .padding(.bottom,1)
                        
                        Text("00:20:00")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(.bottom, 0.5)
                        
                        Text("수정하기")
                            .fontWeight(.medium)
                            .foregroundColor(Color("5DD066"))
                        
                    }
                }
                .padding(.bottom, 30)
                
                RestStopButtonView()
                    .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    RestTimerView()
}
