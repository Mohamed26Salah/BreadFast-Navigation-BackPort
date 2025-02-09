//
//  NavCoordinator.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import Foundation
import SwiftUI

//MARK: - FullScreen builder

extension NavCoordinator {
    @ViewBuilder
    public func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .fullScreenView:
            FullScreenSheet()
        }
    }
}
