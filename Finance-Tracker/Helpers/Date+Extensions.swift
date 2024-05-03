//
//  Date+Extensions.swift
//  Finance-Tracker
//
//  Created by Никита on 03.05.2024.
//

import SwiftUI

extension Date {
    var startOfMounth: Date {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month], from: self)
        
        return calendar.date(from: components) ?? self
    }
    
    var endOfMounth: Date {
        let calendar = Calendar.current
        
        return calendar.date(byAdding: .init(month: 1, minute: -1), to: self.startOfMounth) ?? self 
    }
}
