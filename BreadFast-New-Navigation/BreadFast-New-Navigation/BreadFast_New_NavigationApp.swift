//
//  BreadFast_New_NavigationApp.swift
//  BreadFast-New-Navigation
//
//  Created by Mohamed Salah on 09/02/2025.
//

import SwiftUI

@main
struct BreadFast_New_NavigationApp: App {
    @StateObject var appState: AppState = AppState()
    var body: some Scene {
        WindowGroup {
            BottomTabsView()
                .environmentObject(appState)
        }
    }
}
