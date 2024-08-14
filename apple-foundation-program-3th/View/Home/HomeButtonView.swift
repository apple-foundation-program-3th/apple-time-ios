//
//  HomeButtonView.swift
//  apple-foundation-program-3th
//
//  Created by dgsw8th07 on 8/14/24.
//

import SwiftUI

struct HomeButtonView: View {
    var body: some View {
        HStack {
            NavigationLink(destination: BomodrowTimerView()) {
                VStack(alignment: .leading) {
                    Image(systemName: "timer")
                        .padding(.bottom)
                    Text("뽀모도로")
                        .padding(.trailing, 50.0)
                    Text("타이머")
                        .padding(.trailing, 50.0)
                    Image(systemName: "greaterthan")
                        .padding(.leading, 100)
                        .padding(.top, 34)
                }
                .frame(width: 120, height: 180)
                .foregroundColor(.red)
                .font(.system(size: 20, weight: .bold))
                .padding()
                .background(Color(.white))
                .cornerRadius(10)
                .multilineTextAlignment(.leading)
                .shadow(radius: 4)
            }
            .padding(.trailing, 20)
            
            NavigationLink(destination: ToDoListView()) {
                VStack(alignment: .leading) {
                    Image(systemName: "square.grid.3x3.topleft.filled")
                        .padding(.bottom)
                    Text("투두")
                        .padding(.trailing, 60.0)
                    Text("리스트")
                        .padding(.trailing, 60.0)
                    Image(systemName: "greaterthan")
                        .padding(.leading, 100)
                        .padding(.top, 34)
                }
                .frame(width: 120, height: 180)
                .foregroundColor(.red)
                .font(.system(size: 20, weight: .bold))
                .padding()
                .background(Color(.white))
                .cornerRadius(10)
                .multilineTextAlignment(.leading)
                .shadow(radius: 4)
            }
            
        }
    }
    
}

#Preview {
    HomeButtonView()
}
