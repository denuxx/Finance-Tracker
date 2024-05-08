//
//  DateFilterView.swift
//  Finance-Tracker
//
//  Created by Никита on 08.05.2024.
//

import SwiftUI

struct DateFilterView: View {
    @State var start: Date
    @State var end: Date
    var onSubmit: (Date, Date) -> ()
    var onClose: () -> ()
    var body: some View {
        VStack(spacing: 15) {
            DatePicker("Дата начала", selection: $start, displayedComponents: [.date])
            
            DatePicker("Дата конца", selection: $end, displayedComponents: [.date])
            
            HStack(spacing: 15) {
                Button("Закрыть") {
                    onClose()
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 5))
                .tint(.red)
                
                Button("Фильтр") {
                    onSubmit(start, end)
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 5))
                .tint(appTint)
            }
            .padding(.top, 10)
        }
        .padding(15)
        .background(.bar, in: .rect(cornerRadius: 10))
        .padding(.horizontal, 30)
    }
}
