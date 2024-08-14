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
        VStack{
            TimerView(selectedTime: $selectedTime)
            TimerView(selectedTime: $selectedTime)
        }
    }
}

#Preview {
    MainTimerView()
}
