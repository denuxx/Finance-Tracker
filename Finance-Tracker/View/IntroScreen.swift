//
//  IntroScreen.swift
//  Finance-Tracker
//
//  Created by Никита on 03.05.2024.
//

import SwiftUI

struct IntroScreen: View {
    /// Статус отображения
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    var body: some View {
        VStack(spacing: 15) {
            Text("Что умеет \nФинансовый трекер")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom, 35)
            
            /// Points View
            VStack(alignment: .leading, spacing: 25, content: {
                PointView(symbol: "rublesign", title: "Транзакции", subTitle: "Следите за своими доходами и расходами.")
                
                PointView(symbol: "chart.bar.fill", title: "Визуальные графики", subTitle: "Просматривайте транзакции с помощью удобного графика.")
                
                PointView(symbol: "magnifyingglass", title: "Продвинутая фильтрация", subTitle: "Найдите нужные вам расходы с помощью предварительного поиска и фильтрации.")
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 15)
            
            Spacer(minLength: 10)
            
            Button(action: {
                isFirstTime = false
            }, label: {
                Text("Продолжить")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)
            })
        }
        .padding(15)
    }
    
    
    /// Point View
    @ViewBuilder
    func PointView(symbol: String, title: String, subTitle: String) -> some View {
        HStack(spacing: 20) {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitle)
                    .foregroundStyle(.gray)
            })
        }
    }
    
    
    
}

#Preview {
    IntroScreen()
}
