//
//  Settings.swift
//  Finance-Tracker
//
//  Created by Никита on 03.05.2024.
//

import SwiftUI

struct Settings: View {
    /// User Properties
    @AppStorage("userName") private var userName: String = ""
    /// App Lock Properties
    @AppStorage("isAppLockEnabled") private var isAppLockEnabled: Bool = false
    @AppStorage("lockWhenAppGoesBackground") private var lockWhenAppGoesBackground: Bool = false
    var body: some View {
        NavigationStack {
            List {
                Section("Имя пользователя") {
                    TextField("Имя", text: $userName)
                }
                
//                Section("Защита приложения") {
//                    Toggle("Включить блокировку экрана", isOn: $isAppLockEnabled)
//                    
//                    if isAppLockEnabled {
//                        Toggle("Блокировка при переходе приложения в фоновый режим", isOn: $lockWhenAppGoesBackground)
//                    }
//                }
            }
            .navigationTitle("Настройки")
        }
    }
}

#Preview {
    ContentView()
}
