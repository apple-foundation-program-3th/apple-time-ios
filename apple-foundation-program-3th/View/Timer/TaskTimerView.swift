//
//  TaskTimerView.swift
//  apple-foundation-program-3th
//
//  Created by Mirae on 8/14/24.
//

import SwiftUI

struct TaskTimerView: View {
    var body: some View {
        NavigationView{
            VStack{
                BackButtonView()
                    .offset(x:-150)
                
                Text("SwiftUi 문법 공부")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("181818"))
                    .padding(.bottom, 70)
                    .padding(.trailing, 150)
                
                ZStack{
                    Circle()
                        .trim(from: 0, to: 1)
                            .stroke(Color.black.opacity(0.09), style: StrokeStyle(lineWidth: 35, lineCap: .round))
                        .frame(width: 280, height: 280)
                    Circle()
                        .trim(from: 0, to: 0.05)
                            .stroke(Color("E65844"), style: StrokeStyle(lineWidth: 35, lineCap: .round))
                        .frame(width: 280, height: 280)
                        .rotationEffect(.init(degrees: -90))
                    
                    VStack{
                        Text("사과 생성까지")
                            .font(.system(size: 21))
                            .foregroundColor(Color("181818"))
                            .fontWeight(.light)
                        Text("00:00:00")
                            .font(.system(size: 47))
                            .foregroundColor(Color("181818"))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                }
                .padding(.top, 10)
                }
                .padding(.top, 10)
                .padding(.bottom, 80)
                
                HStack{
                    VStack{
                        Text("설정 목표 시간")
                        Text("01:00:00")
                    }
                    
                    VStack{
                        Text("설정 휴식 시간")
                        Text("00:20:00")
                    }
                }
                
                StopButtonView()
                    .padding(.bottom, 50)
            }
        }
    }

#Preview {
    TaskTimerView()
}
