//
//  MainTimerView.swift
//  apple-foundation-program-3th
//
//  Created by dgsw8th07 on 8/14/24.
//

import SwiftUI

struct MainTimerView: View {
    @State private var selectedTime: TimeInterval = 0
    var body: some View {
        NavigationView{
            VStack{
                Text("목표 시간 설정")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("181818"))
                    .padding(.bottom, 60)
                    .padding(.trailing, 200)
                VStack(alignment: .leading){
                    Text("작업 시간 ⏰")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.leading, 40)
                        .padding(.bottom, -10)
                    TimerView(selectedTime: $selectedTime)
                }
                VStack(alignment: .leading){
                    Text("휴식 시간 ⏰")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.leading, 40)
                        .padding(.bottom, -10)
                    TimerView(selectedTime: $selectedTime)
                }
                NavigationLink(destination: TaskTimerView()) {
                    Text("시작")
                        .frame(width: 310, height: 24)
                        .foregroundColor(.black)
                        .font(.system(size: 30, weight: .bold))
                        .padding()
                        .background(Color("E65844"))
                        .cornerRadius(10)
                }
                Text("버튼을 누르면 바로 시작됩니다!")
                    .foregroundColor(Color("E65844"))
                
            }
        }
        //        .navigationBarBackButtonHidden()
    }
}

#Preview {
    MainTimerView()
}
