//
//  TimerView.swift
//  apple-foundation-program-3th
//
//  Created by dgsw8th07 on 8/14/24.
//

import SwiftUI

struct TimerView: View {
    @Binding var selectedTime: TimeInterval
    @StateObject private var model = TimerViewModel()
    
    var body: some View {
        HStack{
            TimePickerView(title: "시",
                           range: model.hoursRange,
                           binding: $model.selectedHourAmount)
            TimePickerView(title: "분",
                           range: model.minutesRange,
                           binding: $model.selectedMinutesAmount)
            TimePickerView(title: "초",
                           range: model.secondsRange,
                           binding: $model.selectedSecondsAmount)
        }
        .padding(.all, 32)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .foregroundColor(.black)
        .onChange(of: model.selectedHourAmount) { _ in
            selectedTime = model.totalTimeInterval()
        }
        .onChange(of: model.selectedMinutesAmount) { _ in
            selectedTime = model.totalTimeInterval()
        }
        .onChange(of: model.selectedSecondsAmount) { _ in
            selectedTime = model.totalTimeInterval()
        }
    }
}
