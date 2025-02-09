//
//  NavCoordinatorView.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import Foundation
import SwiftUI
import NavigationBackport

public struct NavCoordinatorView: View {
    @StateObject var coordinator: NavCoordinator
    var rootView: Screen
    
    public init(coordinator: NavCoordinator, rootView: Screen) {
        self._coordinator = StateObject(wrappedValue: coordinator)
        self.rootView = rootView
    }
    
    public var body: some View {
        NBNavigationStack(path: $coordinator.path) {
            coordinator.build(screen: rootView)
                .nbNavigationDestination(for: Screen.self) { screen in
                    coordinator.build(screen: screen)
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    coordinator.build(sheet: sheet)
                }
                .fullScreenCover(item: $coordinator.fullScreenCover) { fullScreenCover in
                    coordinator.build(fullScreenCover: fullScreenCover)
                }
        }
        .environmentObject(coordinator)
    }
}
