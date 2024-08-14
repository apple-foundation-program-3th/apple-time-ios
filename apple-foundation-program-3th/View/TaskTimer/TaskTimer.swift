//
//  TaskTimer.swift
//  apple-foundation-program-3th
//
//  Created by Mirae on 8/14/24.
//

import SwiftUI

struct TaskTimer: View {
    @EnvironmentObject var appleTimeModel: AppleTimeModel
    var body: some View {
        VStack{
            Text("목표 시간 설정")
                .font(.title2.bold())
                .foregroundColor(.white)

            GeometryReader{proxy in
                VStack(spacing: 15){
                    // MARK: Timer Ring
                    ZStack{
                        Circle()
                            .fill(.white.opacity(0.03))
                            .padding(-40)
                        
                        Circle()
                            .trim(from: 0, to: appleTimeModel.progress)
                            .stroke(.white.opacity(0.03), lineWidth: 80)
                        
                        // MARK: Shadow
                        Circle()
                            .stroke(Color("Purple"), lineWidth: 5)
                            .blur(radius: 15)
                            .padding(-2)
                        
                        Circle()
                            .fill(Color("BG"))
                        
                        Circle()
                            .trim(from: 0, to: appleTimeModel.progress)
                            .stroke(Color("Purple").opacity(0.7), lineWidth: 10)
                        
                        // MARK: Knob
                        GeometryReader{proxy in
                            let size = proxy.size
                            
                            Circle()
                                .fill(Color("Purple"))
                                .frame(width: 30, height: 30)
                                .overlay(content: {
                                    Circle()
                                        .fill(.white)
                                        .padding(5)
                                })
                                .frame(width: size.width,
                                       height: size.height,
                                       alignment: .center)
                            // MARK: Since View is Rotated Thats Why Using X
                                .offset(x: size.height / 2)
                                .rotationEffect(.init(degrees: appleTimeModel.progress * 360))
                        }
                        
                        Text(appleTimeModel.timerStringValue)
                            .font(.system(size: 45, weight: .light))
                            .rotationEffect(.init(degrees: -90))
                            .animation(.none, value: appleTimeModel.progress)
                    }
                    .padding(60)
                    .frame(height: proxy.size.width)
                    .rotationEffect(.init(degrees: -90))
                    .animation(.easeInOut, value: appleTimeModel.progress)
                    
                    Button {
                        if appleTimeModel.isStarted{
                            
                        } else {
                            appleTimeModel.addNewTimer = true
                        }
                        
                    } label: {
                        Image(systemName: !appleTimeModel.isStarted ? "timer" :
                                "pause")
                            .font(.largeTitle.bold())
                            .foregroundColor(.white)
                            .frame(width: 80, height: 80)
                            .background{
                                Circle()
                                    .fill(Color("Purple"))
                            }
                            .shadow(color: Color("Purple"), radius: 8, x:0, y:0)
                    }
                }
                .onTapGesture(perform: {
                    appleTimeModel.progress = 0.5
                })
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .center)
                
            }
        }
        .padding()
        .background{
            Color("BG")
                .ignoresSafeArea()
        }
        .overlay(content: {
            ZStack{
                Color.black
                    .opacity(appleTimeModel.addNewTimer ? 0.25 : 0)
                    .onTapGesture {
                        appleTimeModel.addNewTimer = false
                    }
            }
            .animation(.easeOut, value: appleTimeModel.addNewTimer)
        })
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppleTimeModel())
    }
}

#Preview {
    TaskTimer()
}
