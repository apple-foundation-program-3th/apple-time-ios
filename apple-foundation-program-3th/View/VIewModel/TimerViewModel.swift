//
//  TimerViewModel.swift
//  apple-foundation-program-3th
//
//  Created by dgsw8th07 on 8/14/24.
//

import Foundation
import SwiftUI

class TimerViewModel: ObservableObject {
    @Published var selectedHourAmount = 1
    @Published var selectedMinutesAmount = 0
    @Published var selectedSecondsAmount = 0
    
    let hoursRange = 0...23
    let minutesRange = 0...59
    let secondsRange = 0...59
    
    func totalTimeInterval() -> TimeInterval {
        let hours = TimeInterval(selectedHourAmount * 3600)
        let minutes = TimeInterval(selectedMinutesAmount * 60)
        let seconds = TimeInterval(selectedSecondsAmount)
        return hours + minutes + seconds
    }
}
