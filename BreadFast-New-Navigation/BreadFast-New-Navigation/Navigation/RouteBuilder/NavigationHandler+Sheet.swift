//
//  NavCoordinator.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import Foundation
import SwiftUI


//MARK: - Sheet builder -

extension NavCoordinator {
    
    @ViewBuilder
    public func build(sheet: Sheet) -> some View {
        switch sheet {
        case .bottomSheet:
            Text("Bottom Sheet")
        }
    }
}

