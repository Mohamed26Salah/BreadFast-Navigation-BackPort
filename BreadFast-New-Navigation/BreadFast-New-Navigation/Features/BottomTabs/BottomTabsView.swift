//
//  BottomTabsView.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import Foundation
import SwiftUI
import NavigationBackport

public struct BottomTabsView : View {
    @EnvironmentObject var appState: AppState
    @StateObject public var homeNavCoordinator = NavCoordinator()
    @StateObject public var merchantNavCoordinator = NavCoordinator()
    
    public var body: some View {
        TabView(selection: $appState.selectedTab) {
            homeTabView()
            merchantTabView()
        }
        .onAppear {
            appState.homeCoordinator = homeNavCoordinator
            appState.merchantCoordinator = merchantNavCoordinator
        }
    }
    
    @ViewBuilder
    func homeTabView() -> some View {
        NavCoordinatorView(
            coordinator: homeNavCoordinator,
            rootView: .home
        )
        .navigationViewStyle(.stack)
        .tag(Tab.home)
        .tabItem {
            Label{
                Text("home")
            } icon: {
                Image(systemName: "house.fill")
                    .renderingMode(.template)
            }
        }
    }
    
    @ViewBuilder
    func merchantTabView() -> some View {
        NavCoordinatorView(
            coordinator: merchantNavCoordinator,
            rootView: .merchant
        )
        .tag(Tab.merchant)
        .tabItem {
            Label{
                Text("stores")
            } icon: {
                Image(systemName: "cart.fill")
                    .renderingMode(.template)
            }
        }
    }
}
