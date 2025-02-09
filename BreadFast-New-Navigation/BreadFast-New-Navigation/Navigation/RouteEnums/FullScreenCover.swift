//
//  NavCoordinator.swift
//  BreadFast-Navigation-Backport
//
//  Created by Mohamed Salah on 06/02/2025.
//

import Foundation
import SwiftUI

public enum FullScreenCover {
    case fullScreenView
}

extension FullScreenCover: Identifiable {
    public var id: String {
        return String(describing: self).extractedStringBeforeParenthesis()
    }
}

extension FullScreenCover: Equatable {
    public static func == (lhs: FullScreenCover, rhs: FullScreenCover) -> Bool {
        return lhs.id == rhs.id
    }
}
