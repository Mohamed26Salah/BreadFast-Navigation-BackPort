//
//  NavCoordinator.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import Foundation
import SwiftUI


//MARK: - Screen builder

extension NavCoordinator {
    @ViewBuilder
    public func build(screen: Screen) -> some View {
        switch screen {
        case .home:
            HomeView()
        case .merchant:
            MerchantView()
        case .smartScreen(let name):
            SmartScreenView(shopName: name)
        case .shops:
            ShopsView()
        
         }
    }
}
