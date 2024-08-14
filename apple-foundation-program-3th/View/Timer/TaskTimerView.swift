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
                    .padding(.bottom, 200)
                    .padding(.trailing, 150)
                ZStack{
                    Circle()
                        .fill(.black.opacity(0.03))
                        .padding(-40)
                    Circle()
                        .fill(.white)
                        .padding(0)
                }
                    
            }
        }
    }
}

#Preview {
    TaskTimerView()
}
