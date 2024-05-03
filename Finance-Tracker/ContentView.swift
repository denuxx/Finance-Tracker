 //
//  ContentView.swift
//  Finance-Tracker
//
//  Created by Никита on 03.05.2024.
//

import SwiftUI

struct ContentView: View {
    /// Интро Статус отображения
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    /// Active Tab
    @State private var activeTab: Tab = .recents
    var body: some View {
        TabView(selection: $activeTab) {
            Text("Недавние")
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent }
            
            Text("Поиск")
                .tag(Tab.search)
                .tabItem { Tab.search.tabContent }
            
            Text("Графики")
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContent }
            
            Text("Настройки")
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContent }
        }
        .tint(appTint)
        .sheet(isPresented: $isFirstTime, content: {
            IntroScreen()
                .interactiveDismissDisabled()
        })
    }
}

#Preview {
    ContentView()
}
