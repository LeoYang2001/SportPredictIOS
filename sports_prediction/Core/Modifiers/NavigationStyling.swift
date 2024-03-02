//
//  NavigationStyling.swift
//  sports_prediction
//
//  Created by 杨嘉煌 on 2/13/24.
//

import Foundation
import SwiftUI


struct NavigationBarStyling: ViewModifier {
    var gameTitle: String
    
    func body(content: Content) -> some View {
        content
            .navigationTitle(gameTitle)
            .foregroundColor(.white)
            .background(Color.themeColor(1))
            .toolbarBackground(Color.themeColor(1), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

extension View {
    func navigationBarStyling(gameTitle: String) -> some View {
        self.modifier(NavigationBarStyling(gameTitle: gameTitle))
    }
}
