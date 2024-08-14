//
//  TimePickerView.swift
//  apple-foundation-program-3th
//
//  Created by dgsw8th07 on 8/14/24.
//

import SwiftUI

struct TimePickerView: View {
    private let pickerViewTitlePadding: CGFloat = 4.0
    
    let title: String
    let range: ClosedRange<Int>
    let binding: Binding<Int>
    
    var body: some View {
        HStack(spacing: -pickerViewTitlePadding){
            Picker(title, selection: binding) {
                ForEach(range, id: \.self) { timeIncrement in
                    HStack{
                        Spacer()
                        Text("\(timeIncrement)")
                            .foregroundStyle(.black)
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            .pickerStyle(InlinePickerStyle())
            .labelsHidden()
            
            Text(title)
                .fontWeight(.bold)
        }
    }
}
